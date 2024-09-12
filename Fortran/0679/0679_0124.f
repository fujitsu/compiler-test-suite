      dimension a(3,3,3,3,3,3,3),b(3,3,3,3,3,3,3),c(3,3,3,3,3,3,3)
      data  a,b,c/2187*1.0,2187*2.0,2187*3.0/
      integer o

      do 10 j=1,3
        do 10 i=1,3
          do 10 n=1,3
            do 10 m=1,3
              do 10 l=1,3
                do 10 k=1,3
                  do 10 o=1,3
            a(i,j,n,m,l,k,o) = a(i,j,n,m,l,k,o) + b(i,j,n,m,l,k,o)
     *                         + c(i,j,n,m,l,k,o)
   10 continue

      print *,a
      stop
      end
