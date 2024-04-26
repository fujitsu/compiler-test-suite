      real*8     a(10),b(10),c(10),d(10)
      s = 1.0
      do 10 i=1,10
        a(i) = s
        b(i) = s + 1.0
        c(i) = s * 2.0
        d(i) = s / 2.0
        s = s + 1.0
 10   continue
      do 20 i=1,10
        a(i) = b(i) + c(i)
        do 20 j=i,10
          b(j) = c(j) * d(j)
          d(j) = a(j) + b(j)
 20   continue
      do 30 k=1,9
        do 40 l=k,10
          a(l) = b(l) - c(l) + d(l)
          b(l) = c(l) * d(l) - a(l)
 40     continue
        c(k) = b(k) + d(k) * a(k)
        a(k) = c(k) * d(k+1)
 30   continue
      write(6,*) '## a ##'
      write(6,1) a
      write(6,*) '## b ##'
      write(6,1) b
      write(6,*) '## c ##'
      write(6,1) c
      write(6,*) '## d ##'
      write(6,1) d
    1 format(4e20.9)
      stop
      end
