      dimension a(2,2,2,2,2),b(2,2,2,2,2),c(2,2,2,2,2)
      data  a,b,c/32*1.0,32*2.0,32*3.0/

      do 10 j=1,2
        do 10 i=1,2
          do 10 n=1,2
            do 10 m=1,2
              do 10 l=1,2
              a(i,j,n,m,l) = a(i,j,n,m,l) + b(i,j,n,m,l)
     *                       + c(i,j,n,m,l)
   10 continue

      print *,a
      stop
      end
