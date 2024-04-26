      dimension   a(30,30),b(30,30),c(30,30)
      data   a/900*2.0/,b/900*3.0/,c/900*4.0/
      n = 1
      do 10 i=3,12
        a(i,2*n) = b(n,2*n+1) + c(n,n)
        n = n + 1
        b(n+1,2*n) = a(i-1,n) * c(2*n,n+1)
        c(n-1,n-1) = (b(n,n-1) - a(i,n)) / 2.0
 10   continue
      write(6,*) ((a(i,j),i=3,8),j=4,9)
      write(6,*) ((b(i,j),i=5,10),j=6,11)
      write(6,*) ((c(i,j),i=7,12),j=7,12)
      stop
      end
