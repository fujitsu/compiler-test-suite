      implicit   complex*8(c)
      common  /bk1/  a1(10),a2(10),a3(10)
      common  /bk2/  b1(10),b2(10),b3(10)
      common  /bk3/  c1(10),c2(10),c3(10)
      dimension      c(10),d(10),e(10)
      equivalence    (a1(1),d(1))
      equivalence    (c1(1),c(1))
      equivalence    (b2(1),e(1))
      do 5 i=1,10
        a1(i) = 1.
        a2(i) = 1.
 5      a3(i) = 1.
      do 10 i=1,10
        b1(i) = 1.
        b2(i) = 1.
 10     b3(i) = 1.
      do 20 i=1,10
        c1(i) = (1.,2.)
        c2(i) = (1.,3.)
 20     c3(i) = (1.,4.)
      do 30 i=1,10
        a1(i) = 1.
        a2(i) = 1.
 30     a3(i) = 1.
      do 40 j=1,10
 40      a1(j) = b1(j) + c(j)
      do 50 k=1,10
 50     c1(k) = b1(k) + c(k)
      write(6,*) a1
      write(6,*) b1
      write(6,*) c1
      stop
      end
