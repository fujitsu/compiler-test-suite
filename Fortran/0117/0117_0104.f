      integer a(100)
      integer b(100)
      integer c(100)
      integer d(100)
      integer e(100)
      integer f(100)
      integer g(100)
      integer h(100)
      integer k(100)
      integer m(100)
      a=1
      b=2
      c=3
      d=4
      e=5
      f=6
      g=7
      h=8
      k=9
      m=10
      do 10 i=10,15
         do 20 j=1,10
            a(i) = a(10)
            b(i) = b(10)
            c(10) = c(i)
            d(100) = d(i)
            e(i) = e(10)
            f(20) = f(i)
            g(i) = g(1)
            h(1) = h(i)
            k(i) = k(10)
            m(100) = m(i)
 20      continue
 10   continue
      do 100 i=10,15
         do 200 j=1,10
            write(6,*) a(i)
            write(6,*) b(i)
            write(6,*) c(10)
            write(6,*) d(10)
            write(6,*) e(i)
            write(6,*) f(10)
            write(6,*) g(i)
            write(6,*) h(1)
            write(6,*) k(i)
            write(6,*) m(10)
 200     continue
 100  continue
      stop
      end
