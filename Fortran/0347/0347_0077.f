      dimension  a(40),b(40),c(40),d(40)
      data    n/1/
      s = 1.0
      do 10 i=1,40
        a(i) = s
        b(i) = a(i) + s
        c(i) = b(i) + s
        d(i) = c(i) + s
        s = s + 1.0
 10   continue
      m = n + 1
      do 30 k=4,18,m
        a(2*k+m) = b(2*k) + c(2*k+2) - d(2*k)
        c(2*k) = a(2*k) * (b(k) - d(k))
        d(k-m) = a(k-n) + c (2*k-m)
        b(k) = d(k-m-1) * a(k+m) - c(2*k-2)
 30   continue
      write(6,*) (a(i),i=10,19)
      write(6,*) (b(i),i=4,13)
      write(6,*) (c(i),i=1,10)
      write(6,*) (d(i),i=8,17)
      stop
      end
