      program main
      integer i4001(100,100),i4002(100,100),i4003(100)
      integer i4004(100),i4005(30),i4006(30,30)
      integer func
      integer*4 i8001(100),i8002(100)
      logical l4001(100),l4002(100,100),l4003(100,30),l4004
      data i4001,i4002/20000*0/,i4003/100*2/,i4005/30*0/
      data i4006/900*0/
      data i8001/100*0/,i8002/100*0/
      data i4004/10*1,10*2,10*3,10*4,10*5,10*6,10*7,10*8,10*9,10*10/
      data l4001/100*.true./,l4002/10000*.true./,l4003/3000*.true./
      data l4004/.true./
      do 10 i=1,100
        i8001(i) = ibclr(i,i4003(i))
        do 20 j=1,100
          i4001(i,j) = ibset(i4002(i,j),0)
   20   continue
        i8002(i) = func(i4004(i))
   10 continue
      write(6,*)
      write(6,*) ' ###   ### '
      write(6,*)
      write(6,*) ' ## test 1 ## '
      write(6,*) ' i4001 '
      write(6,*) ((i4001(i,j),i=1,100,20),j=1,100,20)
      write(6,*) ' i8001 '
      write(6,*) (i8001(i),i=1,100,10)
      write(6,*) ' i8002 '
      write(6,*) (i8002(i),i=1,100,10)
      write(6,*)
      do 30 i=1,100,2
        l4001(i) = btest(i,i4004(i))
        if (l4001(i)) then
          do 40 j=1,100,3
            l4002(i,j) = btest(i,j/5).and.btest(j,i/5)
   40     continue
        else
          do 50 j=1,100,4
            l4002(i,j) = btest(i,j/5).or.btest(j,i/5)
   50     continue
        endif
        do 60 j=1,30
          l4003(i,j) = l4002(i,j).and.btest(i4004(i),j)
   60   continue
        l4004 = l4001(i).and.l4003(i,1)
   30 continue
      write(6,*) ' ## test 2 ## '
      write(6,*) ' l4001 '
      write(6,*) (l4001(i),i=1,100,3)
      write(6,*) ' l4002 '
      write(6,*) ((l4002(i,j),i=1,100,15),j=1,100,10)
      write(6,*) ' l4003 '
      write(6,*) ((l4003(i,j),i=1,100,15),j=1,30)
      write(6,*) ' l4004 '
      write(6,*) l4004
      write(6,*)
      do 70 i=1,30
        i4005(i) = ibset(i,i)
        do 80 j=1,30
          jj = i4004(j)
          i4006(i,j) = ibset(int(func(jj)),jj)
   80   continue
        i4005(i) = ibset(i4005(i),i)
   70 continue
      write(6,*) ' ## test 3 ## '
      write(6,*) ' i4005 '
      write(6,1) (i4005(i),i=1,30)
      write(6,*) ' i4006 '
      write(6,*) ((i4006(i,j),i=1,30,5),j=1,30,5)
      write(6,*)
    1 format(5i15)
      stop
      end
      integer function func(m)
      integer m
      k = 0
      do 111 ii=1,m
        j = ibclr(ii,1)
        k = k + j
  111 continue
      func = k
      return
      end
