      real*8  a(20),b(20),c(20),d(20)
      integer*4  l(10)
      do 10 i=1,10
        l(i) = i+2
 10   continue
      do 11 i=1,20
        a(i) = 1.0
        b(i) = 2.0
        c(i) = 3.0
        d(i) = 4.0
 11   continue
      do 20 j=5,6
        do 20 k=3,l(j)
          a(k) = b(k+1) / c(k) + d(k+2)
          b(k) = a(k-1) + c(k+1) - d(k+1)
          c(k) = (b(k) - d(k)) * a(k-1)
          d(k) = c(k+1) + a(k) - b(k)
 20   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      do 30 k=5,12,l(2)
        a(k+3) = b(k+2) * c(k+1) - d(k)
        c(k+1) = a(k) - d(k+1) / b(k+1)
        b(k) = ((d(k+1) + d(k)) / 2.0 - a(k))
        d(k) = c(k) + b(k-2) * a(k-1)
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      do 40 j=6,7
        do 40 k=l(j),1,-1
          a(k) = b(k) * c(k+1) - d(k)
          b(k) = ((d(k+1) - a(k+2)) * 2.0 + c(k+1)) / 2.0
          d(k+1) = c(k) * a(k+1) - b(k+2)
          c(k) = (d(k) - b(k+1)) * a(k+1)
 40   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
