      dimension  a(2,2,2,2,2),b(2,2,2,2,2)
      data  a,b/32*2.0,32*2.0/

      do 10 i=1,2
       do 10 j=1,2
        do 10 k=1,2
         do 10 l=1,2
          do 10 m=1,2
           a(l,j,m,i,k) = a(l,j,m,i,k) + b(l,j,m,i,k)
   10 continue

      print *,a
      stop
      end
