      dimension  a(10),b(10),c(10),d(10)
      s = 2.0
      do 10 i=1,10
        a(i) = s
        b(i) = s + 1.0
        c(i) = s * 2.0
        d(i) = s / 2.0
        s = s + 1.0
 10   continue
      do 20 j=1,8
       a(j) = b(j) + c(j) - d(j)
       do 20 k=1,j+1
         b(k) = c(k) - d(k) - a(k+1)
         c(k) = d(k) + a(k) - b(k)
         d(k) = (a(k)-b(k)) * 2.0
 20   continue
      do 30 l=1,8
       do 40 m=1,l+1
         b(m) = a(m+1) + d(m) - c(m)
         d(m) = c(m) + a(m) - b(m)
         a(m) = d(m) * 2.0
 40   continue
         c(l) = a(l) - d(l)
         b(l) = c(l) - 2.0
 30   continue
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d
      stop
      end
