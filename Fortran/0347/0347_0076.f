      dimension  a(40),b(40),c(40),d(40)
      s = 1.0
      do 10 i=1,40
        a(i) = s
        b(i) = a(i) + s
        c(i) = b(i) + s
        d(i) = c(i) + s
        s = s + 1.0
 10   continue
      n = 2
      do 20 j=3,15,n
        a(j+n) = b(j+n+1) - c(j+n) + d(j+n)
        b(j+1) = a(j) * c(j+1) - d(j)
        d(j) = (b(j) - c(j)) * a(j)
 20   continue
      write(6,*) a
      write(6,*) b
      write(6,*) d
      m = n + 1
      do 30 k=2,13,m
        a(n*k+m) = b(n*k) + c(m*k+n) - d(n*k)
        c(n*k) = a(n*k) * (b(k) - d(k))
        b(k) = d(m) * a(n*k) - c(n*k-n)
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      stop
      end
