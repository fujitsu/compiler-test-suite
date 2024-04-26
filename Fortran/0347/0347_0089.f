      real*8     a(20),b(20),c(20),d(20)
      equivalence  (a(1),b(10)),(a(20),d(9))
      s = 2.01
      do 10 i=1,20
        a(i) = s
        b(i) = s + 1.0
        c(i) = s * 2.0145
        d(i) = s *1.0123
 10   continue
      do 20 j=2,17
        c(j+1) = a(j+1) + b(j)
        a(j) = c(j+1) * d(j)
        d(j) = c(j) + b(j)
 20   continue
      do 30 j=2,18
        c(j+1) = d(j+2) + b(j)
        b(j) = c(j+1) * d(j)
        d(j) = c(j) + b(j)
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
