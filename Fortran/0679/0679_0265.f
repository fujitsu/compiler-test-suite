      dimension a(10),b(10),c(10),d(10)
      data b/10*1.0/,c/10*2.0/,d/10*3.0/
      do 10 i=1,10
        a(i) = b(i) + c(i)
  10  continue
      do 20 i=1,10
        do 30 j=1,10
          do 40 k=1,10
            b(k) = a(k) * c(k)
  40      continue
          do 50 k=1,10
            c(k) = b(k)
  50      continue
          do 60 l = 1,10
            do 70 m=1,10
              c(m) = a(m)
  70        continue
            a(l) = 0.0
  60      continue
          do 80 m=1,10
            b(m) = d(m) + c(m)
            a(m) = c(m) - d(m)
  80      continue
  30    continue
  20  continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
