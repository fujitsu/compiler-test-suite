      real a(-1:6,-1:10),b(-1:6,-1:10)
      data a,b/96*1.0,96*2.0/,n/1/
      do 10 i=-1,6
       do 10 m=-1,10,1
        a(i**n,m) = a(i**n,m) * b(i**n,m)
   10 continue
      print *,((a(i,j),i=-1,6,1),j=-1,10,3)
      end
