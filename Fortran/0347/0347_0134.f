      real*8     a(30),b(30),c(30),d(30)
      data  n/1/, m/2/
      do 10 i=1,30
        b(i) = 1.1d0
        c(i) = 1.2d0
        d(i) = 1.3d0
        a(i) = 1.0d0
 10   continue
      do 20 j=2,10
        a(2*j+n) = b(j+n+1) * 2.0 + c(j+n+2) + d(2*j+n)
        b(j+n+m) = c(j+m+1) * d(j-m+1) + a(j)
        c(j+1) = a(j*2) - (b(j+m) + d(j+n)) / 2.0
        d(j-m+n) = b(j) / c(j+1) + a(2*j+1)
        a(j) =  b(j) + c(j) + d(j)
 20   continue
      write(6,*) (a(i),i=3,13)
      write(6,*) (b(i),i=4,14)
      write(6,*) (c(i),i=5,15)
      write(6,*) (d(i),i=4,14)
      do 30 n=1,10
        if (n.lt.3) then
          do 40 m=12,25,n
            a(m+n) = b(m+1) - c(n+1) - d(m+n-1)
            b(m) = a(m-n-1) * b(m+3) / d(m)
            c(m) = d(m+1) * a(m) + c(n)
            d(n) = b(m-n) - (c(m-n-1) + a(n)) / 2.0
 40       continue
        endif
        if (n.gt.8) then
          do 50 k=3,10
            a(k+n) = b(2*k+n) + c(k+n+1) - d(k+n)
            b(k+1) = a(n+1) * 2.0 - c(k+n+1)
            c(k+5) = d(k+n+1) + a(n-1) - b(k+n)
            d(k+8) = a(n-1) * (c(k) - b(n+3))
 50       continue
        endif
 30   continue
      write(6,*) (a(i),i=5,15)
      write(6,*) (b(i),i=4,14)
      write(6,*) (c(i),i=6,16)
      write(6,*) (d(i),i=3,13)
      stop
      end
