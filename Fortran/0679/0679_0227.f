      real a(10,10),b(10,10)
      data a,b/100*1.0,100*2.0/
      do 10 i=1,9,2
       do 10 m=1,9
        do 10 j=1,10,2
         do 10 k=1,10
         a(i,m) = a(i+1,m+1) + b(i,m) * 2.
   10 continue
      print *,((a(i,j),i=1,10,2),j=1,10,3)
      end
