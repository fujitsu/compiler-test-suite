      program main
      real ra(50),rb(50),rc(50),rd(50),re(50),rf(50),rg(50)
      real rh(50),ri(50)
      data ra/5*1,5*2,5*3,5*4,5*5,5*6,5*7,5*8,5*9,5*10/,
     +     rb/10*2,10*9,10*4,10*3,10*10/,
     +     rc/10*3,10*8,10*3,10*7,10*11/,
     +     rd/10*4,10*7,10*2,10*8,10*12/,
     +     re/10*5,10*6,10*1,10*9,10*13/,
     +     rf/50*0/,rg/50*0/,rh/50*0/,ri/50*1/,n/50/
      do 100 i=1,50
        rg(i)=rg(i)+1
        if (ra(i).eq.1) then
          rg(i)=rg(i)+rb(i)
        elseif (ra(i).eq.2) then
          rg(i)=rg(i)+rc(i)
        elseif (ra(i).eq.3) then
          rg(i)=rg(i)*rb(i)
        elseif (ra(i).eq.4) then
          rg(i)=rg(i)*rc(i)
        elseif (ra(i).eq.5) then
          rg(i)=rg(i)-rb(i)
        elseif (ra(i).eq.6) then
          rg(i)=rg(i)-rc(i)
        elseif (ra(i).eq.7) then
          rg(i)=rg(i)+rb(i)*2
        elseif (ra(i).eq.8) then
          rg(i)=rg(i)+rc(i)*2
        elseif (ra(i).eq.9) then
          rg(i)=rg(i)-rb(i)*2
        elseif (ra(i).eq.10) then
          rg(i)=0
        endif
  100 continue
      write(6,* ) ' ************* rg ***********'
      write(6,10) rg
   10 format(5f15.7)
      do 200 i=1,50
        if (rc(i).eq.rd(i)) then
          if (rd(i).lt.re(i)) then
            if (re(i).gt.rf(i)) then
              if(ra(i))30,40,50
   30           rh(i)=rh(i)+ra(i)+rb(i)+rc(i)
                goto 20
   40           rh(i)=rh(i)+ra(i)-rb(i)+rc(i)
                goto 20
   50           rh(i)=rh(i)+ra(i)+rb(i)-rc(i)
            endif
          else
            rh(i)=rh(i)+rb(i)+rc(i)+rd(i)
          endif
        else
          rh(i)=rh(i)+rc(i)+rd(i)+rf(i)
        endif
   20   continue
  200 continue
      write(6,* ) ' ************* rh ***********'
      write(6,10) rh
      do 300 i=1,5
        ri(i)=ri(i)+rf(i)
        if(rb(i).eq.5) goto 60
          do 400 j=1,50
            if(rc(j).eq.11) goto 70
              ri(j)=ra(j)*2+rb(j)*2+rc(i)
                if(ri(i).gt.30) goto 80
              ri(j)=ri(j)+1
            if(rd(j).gt.0) then
              ri(j)=ri(j)-1
              goto 60
            endif
  400     continue
   70   ri(i)=ri(i)+1
  300 continue
   60   ri(i)=ri(i)+ra(i)
        goto 90
   80   ri(j)=ri(j)+rb(j)
   90 write(6,* ) ' ************* ri ***********'
      write(6,10) ri
      end
