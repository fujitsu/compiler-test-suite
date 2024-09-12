      program main
      real ra(50),rb(50),rc(50),rd(50)
      real re(4,4,4),rf(4,4,4),rg(4,4,4)
      data ra/5*1,5*2,5*3,5*4,5*5,5*6,5*7,5*8,5*9,5*10/,
     +     rb/10*2,10*9,10*4,10*3,10*10/,
     +     rc/50*0/,rd/50*0/,n/4/
     +     re/8*1,8*5,8*-5,8*9,8*8,8*10,8*-3,8*6/,
     +     rf/8*-8,8*9,8*3,8*-3,8*10,8*6,8*9,8*-1/,rg/64*0/
      do 100 i=1,50
        if((mod(i,3)-1))110,120,120
  120     rc(i)=ra(i)+rb(i)
        if(rc(i).gt.15) rd(i)=1
          if(rd(i).eq.1) goto 160
  130       goto 140
  150       rc(i)=rc(i)+1
            goto 160
  140       rc(i)=rc(i)*2
          if(rc(i).gt.30) goto 150
  160   rc(i)=rc(i)-1
  100 continue
        goto 200
  110  rc(i)=ra(i)-rb(i)
       if(rc(i).lt.5) rd(i)=2
       if(rd(i).ne.2) then
         rc(i)=rc(i)+1
         rd(i)=-1
       endif
       goto 130
  200 write(6,*) ' **************** rc *************'
      write(6,10) rc
      write(6,*) ' **************** rd *************'
      write(6,10) rd
   10 format(5f15.7 )
      do 300 i=1,n
        if((mod(i,3)-1)) 400,500,600
  300 continue
      goto 1000
  400 do 450 j=1,n
        if(i.gt.j) goto 410
          do 420 k=1,n
            rg(i,j,k)=rg(i,j,k)+re(i,j,k)+rf(i,j,k)
  420     continue
          goto 450
  410     do 440 k=1,n
            rg(i,j,k)=rg(i,j,k)+re(i,j,k)-rf(i,j,k)
  440     continue
  450 continue
  430 goto 300
  500 do 530 j=1,n
        do 510 k=1,n,2
          rg(i,j,k)=rg(i,j,k)+re(i,j,k)-rf(i,j,k)
  510   continue
        do 520 k=2,n,2
          rg(i,j,k)=rg(i,j,k)+re(i,j,k)*rf(i,j,k)
  520   continue
  530 continue
      goto 300
  600 do 620 j=1,n
        if((mod(j,2)).eq.1) goto 700
        goto 800
  610   continue
  620 continue
      goto 300
  700 do 710 k=1,n
        rg(i,j,k)=rg(i,j,k)+re(i,j,k)/rf(i,j,k)
  710 continue
      goto 610
  800 do 810 k=1,n
        rg(i,j,k)=rg(i,j,k)+re(i,j,k)*rf(i,j,k)**2
  810 continue
      goto 610
 1000 write(6,*) ' **************** rg ***************'
      write(6,10) rg
      end
