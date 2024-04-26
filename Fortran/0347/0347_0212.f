      dimension   a(20,20),b(20,20),c(20,20)
      data   a/400*2.0/,b/400*3.0/,c/400*4.0/
      n = 1
      do 10 i=3,9
        a(i,2*i) = b(n,2*n+1) + c(n,n)
        n = n + 1
        b(n+1,n) = a(i-1,i) * c(2*n,n+1)
        c(n-1,n-1) = (b(n,n-1) - a(i,i)) / 2.0
 10   continue
      write(6,*) ((a(i,j),i=3,7),j=4,9)
      write(6,*) ((b(i,j),i=5,9),j=6,11)
      write(6,*) ((c(i,j),i=7,11),j=7,12)
      stop
      end
