      dimension  a(5,5,5,5,5,5,5)
      dimension  b(5,5,5,5,5,5,5)
      dimension  c(5,5,5,5,5,5,5)
      integer o
      data  a/78125*1.0/
      data  b/78125*2.0/
      data  c/78125*3.0/

      do 10 i=1,5
      do 10 j=1,5
      do 10 k=1,5
      do 10 l=1,5
      do 10 m=1,5
      do 10 n=1,5
      do 10 o=1,5
          a(i,j,k,l,m,n,o) = a(i,j,k,l,m,n,o) + b(i,j,k,l,m,n,o)
     *                     + c(i,j,k,l,m,n,o)
   10 continue

      write(6,*) a(1,1,1,1,1,1,1),a(2,2,2,2,2,2,2),a(5,5,5,5,5,5,5)
      stop
      end
