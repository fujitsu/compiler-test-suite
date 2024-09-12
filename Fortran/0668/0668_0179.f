      program main
      integer i4001(10),i4002,i4003(10),i4004(10),i4005
      integer i4006(10),i4007(10),i4008(10),i4009
      integer i4010(10),i4011(10),i4012,i4013(10)
      logical l4001(10),l4002(10),l4003
      data i4001/10*0/,i4002/1/,i4003,i4004/20*0/,i4005/0/
      data i4006,i4007,i4008/30*0/,i4009/-1/
      data i4010,i4011,i4013/30*0/,i4012/0/
      data i4max/0/,i4min/100000/
      data l4001,l4002/20*.true./,l4003/.true./
      do 10 i=1,10
        i4001(i) = iand(ibset(i,i4002),ibclr(i,i4002))
        i4003(i) = ibset(iand(i,i),iand(i,i4002))
        i4004(i) = ior(ibset(i4005,i),i4005)
        i4006(i) = ibclr(ior(i4002,i4005),ior(i4001(1),i4003(1)))
        i4007(i) = not(ibset(-i,0))
        i4008(i) = ibclr(i,not(i4009))
   10 continue
      write(6,*)
      write(6,*) ' ###   ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*)
      write(6,1) i4001
      write(6,1) i4003
      write(6,1) i4004
      write(6,1) i4006
      write(6,1) i4007
      write(6,1) i4008
      write(6,*)
      do 20 i=1,10
        if (i4001(i).ge.0) then
          l4001(i) = btest(i4001(i),i4005)
          if (l4001(i).or.btest(i4003(i),i4002)) then
            i4max = max(i4max,ibset(i,0))
          else
            i4min = min(i4min,ibclr(i,0))
          endif
        else
          l4002(i) = btest(i4004(i),i)
          if (l4002(i)) then
            l4003 = btest(i,i)
          endif
        endif
        l4002(i) = l4001(i).and.l4003
   20 continue
      write(6,*) ' ## test 2 ## '
      write(6,*)
      write(6,*) ' max = ',i4max
      write(6,*) ' min = ',i4min
      write(6,*)
      write(6,*) l4001
      write(6,*) l4002
      write(6,*) l4003
      write(6,*)
      do 30 i=1,10
        if (i4max.le.10) then
          i4010(i) = mod(ibset(i4005,i),ibclr(i4006(i),i+i4009))
          i4011(i) = ibset(mod(i,2),i4min)
        else
          i4010(i) = ibset(abs(i4009),i)
          i4011(i) = ibclr(abs(-i),-i4009)
        endif
        if (btest(i4max,i4min)) then
          i4012 =  abs(i4010(i))
        else
          i4012 = abs(ibclr(i4011(i),4))
        endif
        i4013(i) = dim(ibset(i4001(i),-i4009),ibclr(0,i))
   30 continue
      write(6,*) ' ## test 3 ##'
      write(6,*)
      write(6,1) i4010
      write(6,1) i4011
      write(6,1) i4012
      write(6,1) i4013
      write(6,*)
    1 format(15i5)
      stop
      end
