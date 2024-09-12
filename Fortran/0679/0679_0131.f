      dimension  a(10,10,10),b(10,10,10),c(10,10,10,10)
      data  a,b,c/1000*2.0,1000*2.0,10000*1.0/

      do 10 i=1,10
       do 10 j=1,10
        do 10 k=1,10
         do 10 l=1,10
           a(i,k,l) = b(i,k,l) * a(i,k,l)
           c(i,k,l,j) = a(i,k,l) * 2.0
   10 continue

      print *,a(1,1,1),a(10,10,10),c(2,2,2,2),c(5,5,5,5)
      stop
      end
