      program main
      real ra(10,10),rb(10,10),rc(10,10),rd(10,10),
     +     rf(10,10),rg(10,10)
      data ra/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/,
     +     rb/10*10,10*9,10*8,10*7,10*6,10*5,10*4,10*3,10*2,10*1/,
     +     n/3/,rg/100*0/,rf/100*0/,rd/100*0/,rc/100*0/
      do 100 i=1,10
      do 100 j=1,10,3
       if(j-4) 110,120,130
  110    do 200 k=j,j+n
           rc(i,k)=ra(i,k)+rb(i,k)
  200    continue
         goto 100
  120    do 210 k=j,j+n
           rc(i,k)=rb(i,k)-ra(i,k)
  210    continue
         goto 100
  130    if(j.eq.10) then
           do 220 k=j,j
             rc(i,k)=ra(i,k)*rb(i,k)
  220      continue
         else
           do 230 k=j,j+n
             rc(i,k)=ra(i,k)-rb(i,k)
  230      continue
         endif
  100 continue

      write(6,*) ' ***** rc *****'
      write(6,10) rc
   10 format(5f15.6)

      do 300 i=1,3
        if(i.eq.3) then
          call sub1(ra,rb,rd)
        elseif(i.eq.2) then
          call sub2(ra,rb,rf)
        else
          call sub3(ra,rb,rg)
        endif
  300 continue
      write(6,*) ' ***** rd *****'
      write(6,10) rd
      write(6,*) ' ***** rf *****'
      write(6,10) rf
      write(6,*) ' ***** rg *****'
      write(6,10) rg
      end
      subroutine sub
      real ra(10,10),rb(10,10),rx(10,10)
      data n/3/,m/6/,l/10/
      entry sub1(ra,rb,rx)
        do 100 i=1,10
          if((mod(i,3)-1)) 110,120,130
  110       do 200 j=1,l
              rx(j,i)=ra(j,i)+rb(j,i)
  200       continue
            goto 100
  120       continue
  130       do 210 j=1,l
              rx(j,i)=ra(i,j)+rb(i,j)
  210       continue
  100   continue

            return
      entry sub2(ra,rb,rx)
        do 300 i=1,10
         do 300 j=1,l
           rx(j,i)=ra(j,i)-rb(j,i)
  300   continue
        if(j.gt.i) goto 999
      return
      entry sub3(ra,rb,rx)
  999   do 400 i=1,10
          do 400 j=-1,1,1
          if(j) 410,420,430
  410       do 500 k=1,n
              rx(k,i)=rx(k,i)+ra(k,i)+rb(k,i)
  500       continue
            goto 400
  420       do 510 k=n+1,m
              rx(k,i)=rx(k,i)+ra(k,i)-rb(k,i)
  510       continue
            goto 400
  430       do 520 k=m+1,l
              rx(k,i)=rx(k,i)+ra(k,i)*rb(k,i)
  520       continue
  400   continue
        return
        end
