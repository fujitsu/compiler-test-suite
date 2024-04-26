      implicit   complex*8(c)
      common  /bk1/  a1(10),a2(10),a3(10)
      common  /bk2/  b1(10),b2(10),b3(10)
      common  /bk3/  c1(10),c2(10),c3(10)
      dimension      c(20),d(20),e(20)
      equivalence    (a1(1),d(1))
      equivalence    (c1(1),c(1))
      equivalence    (c2(1),cvar)
      equivalence    (b2(1),e(1))
      equivalence    (a1(1),avar)
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
         c2(j) = c3(j) + cvar
         c1(j) = c(j+10) + cmplx(d(j))
 40      a3(j) = b1(j) + imag(c(j)) - avar
      do 50 k=1,10
        a1(k) = d(k) + e(k) + a2(k)
        b1(k) = a3(k) + b2(k)
 50     c1(k) = b1(k) + c(k)
      write(6,*) a1,a2,a3
      write(6,*) b1,b2,b3
      write(6,*) c1,c2,c3
      stop
      end
