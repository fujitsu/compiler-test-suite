      program main
      integer i4001(50,50),i4002(50,50),i4005(50),i4006(50)
      integer i4003,i4004,i4009,i4010
      integer i4007(50),i4008(50,50)
      logical l4001(50,50),l4002(50,50)
      data i4001/2500*0/,i4002/2500*1/,i4003/0/,i4004/1/
      data i4005/50*0/,i4006/50*1/,i4009/31/,i4010/29/
      data i4007/50*0/,i4008/2500*7/
      data l4001,l4002/5000*.true./
      do 20 i=1,50,2
        do 20 j=1,50,2
          if (btest(i4001(i,j),i4003)) then
            l4002(i,j) = btest(i4001(i,j),i4004)
          else
            l4002(i,j) = btest(i4002(i,j),i4004)
          endif
   20 continue
      do 30 i=50,1,-2
        do 35 j=50,1,-3
          if (btest(dim(i,j),ior(i4003,i4004))) then
            l4001(i,j) = btest(ishft(i,1),ieor(i4003,i4004))
          else
            l4001(i,j) = btest(ior(i,j),i4003)
          endif
   35   continue
   30 continue
      write(6,*)
      write(6,*) ' ###   ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,*) ' # l4001 # '
      write(6,*) ((l4001(i,j),i=1,50,5),j=1,50,5)
      write(6,*)
      write(6,*) ' # l4002 # '
      write(6,*) ((l4002(i,j),i=1,50,5),j=1,50,5)
      write(6,*)
      do 40 i=1,50,1
        i4005(i) = abs(i/2)
        do 40 j=1,50
          i4001(i,j) = ibset(max(i,j),i4005(i))
          if (ibset(i4001(i,j),i4003)) 41,41,42
   41     do 60 k=1,50
            i4006(k) = ibclr(k,i4005(i))
   60     continue
          goto 40
   42     do 70 k=1,50,3
            i4006(k) = ibset(k,(i+j)/4)
   70     continue
   40 continue
      write(6,*) ' ## test 2 ##'
      write(6,*)
      write(6,*) ' # i4005 # '
      write(6,1) i4005
      write(6,*)
      write(6,*) ' # i4006 # '
      write(6,1) i4006
      write(6,*)
      write(6,*) ' # i4001 # '
      write(6,1) ((i4001(i,j),i=1,50,5),j=1,50,5)
      write(6,*)
      do 80 i=1,49,2
        i4007(i) =  -i
        i4007(i+1) = i
        if (ibclr(i4007(i),i4009)) 81,82,82
   81   do 90 j=50,1,-1
          i4008(i,j) = ibset(i4002(i,j)**2,i4009-i4010)
   90   continue
   82   do 100 j=50,1,-1
          if (btest(j,iand(j,30))) then
            i4008(i,j) = ibclr(i4008(i,j),i4003)
          endif
  100   continue
        i4007(1) = i4007(i) + i4007(1)
   80 continue
      write(6,*) ' ## test 3 ## '
      write(6,*)
      write(6,*) ' # i4007(1) # ',i4007(1)
      write(6,*)
      write(6,*) ' # i4008 # '
      write(6,*) ((i4008(i,j),i=1,50,5),j=1,50,5)
      write(6,*)
    1 format(8i10)
      stop
      end
