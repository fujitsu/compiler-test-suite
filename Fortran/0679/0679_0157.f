      dimension a(2,4,8,2,4,2,4),b(2,4,8,2,4,2,4),c(2,4,8,2,4,2,4)
      data  a,b,c/4096*1.0,4096*2.0,4096*3.0/
      integer o

      do 10 k=1,8
      do 10 n=1,2,2
      do 10 i=1,2
      do 10 l=1,2,2
      do 10 m=1,4
      do 10 j=1,4,2
      do 10 o=1,4
          a(i,j,k,l,m,n,o) = a(i,j,k,l,m,n,o) + b(i,j,k,l,m,n,o)
     1                   + c(i,j,k,l,m,n,o)
   10 continue

      print *,a
      stop
      end
