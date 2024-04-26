      dimension   a(20,20),b(20,20),c(20,20)
      data   a/400*2.0/,b/400*3.0/,c/400*4.0/
      n = 1
      do 10 i=3,16
        a(n,n) = b(n,n+1) + c(n,n)
        n = n + 1
        b(n-1,n) = a(n-1,n) * c(n,n+1)
        c(n,n) = (b(n,n) - a(n,n)) / 2.0
 10   continue
      write(6,1000)a
      write(6,1000)b
      write(6,1000)c
 1000 format(' ',(3g22.15))
      stop
      end
