      program main
      integer i4001(100),i4002(100),i4003(100),i4004
      integer i4005(100),i4006(100),i4007(100),i4010(100)
      integer i4008(100,100),i4009(5)/5*0/
      integer i4011(100),i4012,i4013(1)
      integer list01(100),list02(100)
      integer i001/1/,i100/100/,inc(4)/-1,-2,-3,-4/
      logical l4001(100)
      data i4001/100*0/,i4002/100*1/,i4004/20/,i4010/100*0/
      data i4005,i4006,i4007/300*0/,i4008/10000*0/
      data i4011/100*0/,i4012,i4013/2*0/
      data l4001/100*.true./
      do 5 i=i100,i001,inc(1)
        list01(i) = i
        list02(i) = i
    5 continue
      do 10 i=i100,i001,inc(1)
        i4003(ibclr(i,30)) = ibclr(list01(i),i4004)
        i4001(ibclr(list01(i),20)) = ibset(i4002(ibclr(
     +   list01(i),15)),i4002(list01(i)))  +
     +   ibclr(i4003(ibclr(list01(i),25)),i4001(list01(i)))
        i4005(i4003(list01(i))) = i
        i4006(i) = ibclr(i4001(i),2)
   10 continue
      write(6,*)
      write(6,*) ' ###   ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,1) i4001
      write(6,*)
      write(6,1) i4003
      write(6,*)
      write(6,1) i4005
      write(6,*)
      write(6,1) i4006
      write(6,*)
      do 20 i=i100,i001,inc(2)
        i4007(i4006(i)) = ibset(i4003(i4005(i)),ibclr(i4005(
     +   list01(i)),i4004)/10)
        if (i4007(i4006(list01(i))).eq.i4007(i4006(i))) then
          l4001(ibclr(list01(i4005(i)),31)) =
     +     btest(i4001(i),list01(i4005(i))-list01(i))
        endif
   20 continue
      write(6,*) ' ## test 2 ## '
      write(6,1) i4007
      write(6,*)
      write(6,*) l4001
      write(6,*)
      j = 1

      do 30 i=i100,i001,inc(3)
        j = j + 1
        if (j.gt.100) j = 1
        if (ibset(i4008(i,j),1)) 31,32,32
   31     i4009(1) = ibset(i4008(list02(i),j),3)
          goto 33
   32     i4009(2) = ibclr(i4008(i4005(i),i4003(j)),30)
   33   continue
        i4009(3) = i
        if (i4008(list01(i),list02(j)).eq.0) then
          i4009(4) = ibset(i,i4008(i,j))
        else
          i4009(5) = j
        endif
        i4010(i) = ibset(i4008(i,j),1)
   30 continue
      write(6,*) ' ## test 3 ## '
      write(6,1) i4009
      write(6,*)
      write(6,1) i4010
      write(6,*)
      do 40 i=i100,i001,inc(4)
        i4011(i) = ibset(i,i4010(i))
        if (btest(i4010(i),1)) then
          i4012 = i4011(i)
        else
          i4013(1) = i4011(i) + ibset(i,1)
        endif
   40 continue
      write(6,*) ' ## test 4 ## '
      write(6,1) i4011
      write(6,*)
      write(6,*) ' i4012 = ',i4012,' i4013(1) = ',i4013
      write(6,*)
    1 format(20i4)
      stop
      end
