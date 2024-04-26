      real*8     a(20),b(20),c(20),d(20)
      s = 1.0
      do 10 i=1,20
        a(i) = s
        b(i) = s * 2.0
        c(i) = b(i) / a(i)
        d(i) = s * c(i)
        s = s + 1.0
 10   continue
      do 20 j=5,10
        n = j-1
        m = j*2-1
        a(n) = b(n+2) + c(m) * d(m)
        b(n+1) = ((a(n) - c(m+1)) + d(m) ) * 2.0
        c(m-1) = a(n) * (b(n) - d(m))
        d(m) = a(n-1) / b(n)
 20   continue
      write(6,*) (a(i),i=4,14)
      write(6,*) (b(i),i=4,14)
      write(6,*) (c(i),i=4,14)
      write(6,*) (d(i),i=4,14)
      k = 1
      do 30 i=1,9
        n = i
        do 40 j=1,n
          m = j+k+1
          if (m.gt.10) go to 40
          a(m) = b(2*m-1) - c(2*m) + d(m)
          b(m-1) = (a(m-1) + c(m)) * d(m)
          c(m*2) = d(m+1) / a(m-1) * 2.0
          d(m) = c(m) - (a(m) + b(m)) * 2.0
 40     continue
        k = k + 1
 30   continue
      write(6,*) (a(j),j=1,11)
      write(6,*) (b(j),j=1,11)
      write(6,*) (c(j),j=1,11)
      write(6,*) (d(j),j=1,11)
      stop
      end
