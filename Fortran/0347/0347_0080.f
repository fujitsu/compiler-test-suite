      dimension  a(20),b(20),c(20),d(20)
      equivalence  (a(1),b(1)),(c(10),d(10))
      s = 1.0
      do 10 i=1,20
        a(i) = s
        b(i) = s + 1.0
        c(i) = s * 2.0
        d(i) = s / 2.0
        s = s + 1.0
 10   continue
      do 20 j=2,16
          c(j+2) = a(j+1) + b(j)
          a(j) = c(j+1) * d(j)
          d(j) = a(j) + b(j)
 20   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
