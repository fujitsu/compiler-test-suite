      program main
      integer i4001(100,100),i4002(100,100)
      integer i4003(100),i4004(100,100,10),i4005,i4006
      integer i4007(100,100),i4008(100)
      integer i4009(100,100,10),i4010(100,100,10),i4011(100)
      integer i4012(10,10,10,10,10),i4013(10,10,10,10,10)
      integer i4014(10,10,10,10),i4015(10,10,10),i4016(10,10)
      logical l4001(10)
      data i4001/10000*1/,i4002/10000*0/,i4003/100*0/
      data i4005,i4006/0,1/,i4007/10000*1/,i4008/100*0/
      data i4009/100000*5/,i4010/100000*0/,i4011/100*10/
      data i4012,i4013,i4015,i4016,i4014/211100*0/
      data l4001/10*.true./
      do 10 i=1,100
        i4003(i) = ibclr(i,0)
        if (i4003(i).ne.ibset(i**2,i4006)) then
          do 20 j=1,100
            if (ibset(i**2,1)) 21,22,22
   21       do 30 k=1,10
              i4004(i,j,k) = ibset(i4005,i4006)
   30       continue
            goto 20
   22       do 40 k=1,10
              i4004(i,j,k) = ibset(i4005,k)
              if (i4004(i,j,k).lt.0) i4004(i,j,k) = abs(i4004(i,j,k))
   40       continue
   20    continue
        else
          do 50 j=1,100
            i4007(i,j) = dim(ibset(i,j),ibset(i4003(i),j))
   50     continue
        endif
        i4003(i) = i4003(i) + ibset(iand(i,31),iand(i,0))
   10 continue
      write(6,*)
      write(6,*) ' ###   ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*) ' i4003 '
      write(6,1) (i4003(i),i=1,100,5)
      write(6,*) ' i4004 '
      write(6,1) (((i4004(i,j,k),i=1,100,20),j=1,100,20),k=1,10)
      write(6,*) ' i4007 '
      write(6,*) ((i4007(i,j),i=1,100,5),j=1,100,20)
      write(6,*)
      do 60 i=1,100
        do 70 j=1,100
          i4001(i,j) = ior(ibset(i4001(i,j),i4002(i,j)),i4001(i,j))
   70   continue
        do 80 j=1,100
          do 80 k=1,10
            i4004(i,j,k) = ibclr(i4009(i,j,k),mod(j,k))
   80   continue
        i4011(i) = int(sin(real(abs(ibset(i4003(i),i4008(i)))))*100)
        do 60 j=1,100
          do 60 k=1,10
            i4010(i,j,k) = ibset(i4011(i),1)
   60 continue
      write(6,*) ' ## test 2 ## '
      write(6,*) ' i4001 '
      write(6,*) ((i4001(i,j),i=1,100,20),j=1,100,20)
      write(6,*) ' i4004 '
      write(6,*) (((i4004(i,j,k),i=1,100,20),j=1,100,20),k=1,10)
      write(6,*) ' i4010 '
      write(6,1) (((i4010(i,j,k),i=1,100,30),j=1,100,30),k=1,10)
      write(6,*) ' i4011 '
      write(6,1) i4011
      write(6,*)
      do 90 i=1,10
        do 100 j=1,10
          do 110 k=1,10
            do 120 l=1,10
              do 130 m=1,10
                i4012(i,j,k,l,m) = ibset(i4013(i,j,k,l,m),0)
  130         continue
              i4014(i,j,k,l) = ibclr(i4013(i,j,k,l,1),1)
  120       continue
            i4015(i,j,k) = ibset(i4014(i,j,k,1),2)
  110     continue
          i4016(i,j) = ibclr(i4015(i,j,1),3)
  100   continue
        l4001(i) = btest(i4016(i,1),4)
   90 continue
      write(6,*) ' ## test 3 ## '
      write(6,*) ' l4001 '
      write(6,*) l4001
      write(6,*)
    1 format(15i5)
      stop
      end
