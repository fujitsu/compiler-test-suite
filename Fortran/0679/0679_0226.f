      real a(10,10,10),b(10,10,10)
      data a,b/1000*1.0,1000*2.0/
      do 10 i=1,10
       do 10 m=1,10
        do 10 j=1,10,2
         do 10 k=1,10
         a(i,j,k) = a(i,j,k) + b(i,j,k) * 2.
   10 continue
      print *,(((a(i,j,k),i=1,10,2),j=1,10,3),k=1,10,2)
      end
