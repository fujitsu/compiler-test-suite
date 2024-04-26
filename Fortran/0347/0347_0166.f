      real*8     a(30,30),b(30,30),c(30,30)
      data     n/1/
      do 10 i=1,30
        do 10 k=1,30
          a(i,k) = 2.024
          b(i,k) = 4.048
          c(i,k) = 5.096
 10   continue
      do 20 i=2,14
        a(2*i,n+1)  = b(i,n*2) - c(i,2*n+1)
        b(2*i,n+2) = a(i,n) + c(31-i,31-n)
        c(i,n) = a(i,n) * b(i,2*n)
        n = n + 1
 20   continue
      write(6,*) ((a(i,j),i=3,7),j=4,9)
      write(6,*) ((b(i,j),i=2,6),j=3,8)
      write(6,*) ((c(i,j),i=2,6),j=2,7)
      stop
      end
