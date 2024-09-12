      real a(3:10,-1:10),b(3:10,-1:10)
      data a,b/96*1.0,96*2.0/
      do 10 i=3,10
       do 10 m=-1,10
        a(i,m) = a(i,m) + b(i,m) * 2.
   10 continue
      print *,((a(i,j),i=3,10,2),j=-1,10,3)
      end
