      program main
      real ra(10,10),rb(10,10),rc(10,10),rd(10,10),
     +     re(10,10),rf(10,10),rg(10,10)
      data ra/10*8,10*7,10*-6,10*2,10*-1,10*9,10*10,10*-5,10*9,10*0/,
     +     rb/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*-8,10*9,10*-0/,
     +     re/10*1,10*5,10*9,10*-4,10*-6,10*6,10*7,10*58,10*0,10*-1/,
     +     rf/10*9,10*6,10*1,10*5,10*9,10*8,10*-2,10*8,10*9,10*4/,
     +     rc/100*0/,rd/100*0/,rg/100*0/,n/10/
      do  99 i=1,n
        if(mod(i,2).eq.0) goto 200
        goto 300
  100   if(mod(i,2).eq.1) then
    1     call sub1(re,rf,rg,i)
        else
    2     call sub2(re,rf,rg,i)
        endif
   99 continue
      goto 400
  200 if(i.gt.5) goto 300
      do 210 j=1,n
        rc(i,j)=ra(i,j)*rb(i,j)
  210 continue
      goto 100
  300 if(i.le.5) goto 200
      do 310 j=1,n
        if(rb(i,j).ne.0) then
          rc(i,j)=ra(i,j)/rb(i,j)
        else
          rc(i,j)=999
        endif
  310 continue
      goto 100
  400 write(6,*) '************ rc **************'
      write(6,10) rc
   10 format(5f15.6)
      write(6,*) '************ rg **************'
      write(6,10) rg
      do 500 i=1,n
        do 510 j=1,n
          if(mod(j,2).eq.0) then
            goto 600
          else
            rd(i,j)=ra(i,j)+rb(i,j)
          endif
  510   continue
        goto 700
  600     rd(i,j)=ra(i,j)+rb(i,j)
          if (rd(i,j).ne.0) goto 510
          goto 700
  610     if(ra(i,j).gt.rb(i,j)) then
            rc(i,j)=-ra(i,j)*rb(i,j)
          else
            rc(i,j)=ra(i,j)*(-rb(i,j))
          endif
          goto 710
  700   do 710 j=1,n
          if(mod(j,2).eq.0) then
            goto 610
          else
            rc(i,j)=ra(i,j)-rb(i,j)
          endif
  710   continue
  500 continue
      write(6,*) '************ rd **************'
      write(6,10) rd
      stop
      end
      subroutine sub
      real re(10,10),rf(10,10),rg(10,10)
      entry sub1(re,rf,rg,i)
      do 100 j=1,10
        rg(i,j)=rf(i,j)-re(i,j)
  100 continue
      entry sub2(re,rf,rg,i)
      do 200 j=1,10
        rg(i,j)=rf(i,j)+re(i,j)
  200 continue
      end
