      program main
      real ra(10,10),rb(10,10),rc(10,10),rd(10,10),re(10,10)
      data ra/10*5,10*6,10*7,10*8,10*9,10*10,10*-1,10*-2,10*3,10*-4/,
     +     rb/10*9,10*1,10*2,10*5,10*4,10*3,10*-9,10*-4,10*10,10*-6/,
     +     rc/100*0/,rd/100*0/,re/100*0/,n/10/
      do 100 i=1,n
        do 100 j=1,n
          rc(j,i)=rb(j,i)+ra(j,i)
  100 continue
      do 110 i=1,10
        do 110 j=1,10
          if(rc(j,i).le.0) then
            rc(j,i)=abs(rc(j,i))
          else
            rc(j,i)=rc(j,i)*2
          endif
  110 continue
      do 120 i=1,n
        do 120 j=1,10
          rc(i,j)=rc(i,j)+rb(i,j)
  120 continue
      do 130 i=1,10
        do 130 j=1,n
          rc(i,j)=rc(i,j)+ra(i,j)
  130 continue
      write(6,*) ' *********** rc *************'
      write(6,10) rc
   10 format(5f15.6)
    1 i=0
  200 if(i.ge.n) goto 220
      i=i+1
        do 210 j=1,n
          rd(i,j)=rb(i,j)**2-ra(i,j)**2
  210 continue
      goto 200
  220 i=n
      goto 250
  230   do 240 j=1,n
          rd(i,j)=rd(i,j)+rb(i,j)
  240   continue
        i=i-1
  250 if(i.gt.0) goto 230
      i=0
  260 i=i+1
        do 270 j=1,n
          rd(i,j)=rd(i,j)-ra(i,j)
  270   continue
      if(i.lt.n) goto 260
      write(6,*) ' *********** rd *************'
      write(6,10) rd
      i=0
  300 if(i.ge.n) goto 320
      i=i+1
        do 310 j=1,10
          re(i,j)=rb(i,j)**2-ra(i,j)**2
  310 continue
      goto 300
  320 i=n
      goto 350
  330   do 340 j=1,10
          re(i,j)=re(i,j)+rb(i,j)
  340   continue
        i=i-1
  350 if(i.gt.0) goto 330
      i=0
  360 i=i+1
        do 370 j=1,10
          re(i,j)=re(i,j)-ra(i,j)
  370   continue
      if(i.lt.n) goto 360
      write(6,*) ' *********** re *************'
      write(6,10) re
      stop
      end
