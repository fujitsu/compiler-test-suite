      real a(-1:6,-1:10),b(-1:6,-1:10)
      data a,b/96*1.0,96*2.0/
      do 10 i=6,-1,-1
       do 10 m=-1,10,1
        a(i,m) = a(i,m) + b(i,m) * 2.
   10 continue
      print *,((a(i,j),i=6,-1,-1),j=-1,10,3)
      end
