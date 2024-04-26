      real*8     a(20),b(20),c(20),d(20)
      do 10 i =1,20
        a(i) = 1.0
        b(i) = a(i) * 2.0
        c(i) = a(i) + 2.0
        d(i) = b(i) - c(i)
 10   continue
      do 20 j=1,18
        a(j) = b(j) + c(j)
        do 20 k=j+1,20
          b(k) = c(k) + d(k) - a(k)
          c(k) = (d(k) - b(k)) * a(k)
 20   continue
      do 30 l=1,17
        do 40 m=l+1,20
          d(m) = a(m) * b(m) - c(m)
          a(m) = b(m) / c(m) + d(m)
 40     continue
        b(l) = a(l) + c(l)
        d(l) = c(l) - d(l)
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
