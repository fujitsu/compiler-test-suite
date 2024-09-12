      dimension a(4,4,4,4,4,4),b(4,4,4,4,4,4),c(4,4,4,4,4,4)
      data  a,b,c/4096*1.0,4096*2.0,4096*3.0/

      do 10 j=1,4
        do 10 i=1,4
          do 10 n=1,4
            do 10 m=1,4
              do 10 l=1,4
                do 10 k=1,4
            a(i,j,n,m,l,k) = a(i,j,n,m,l,k) + b(i,j,n,m,l,k) +
     *                       c(i,j,n,m,l,k)
   10 continue

      print *,a
      stop
      end
