      real a(-1:6,-1:10)
      data a/96*1.0/,s/0./
      do 10 i=-1,6
       do 10 m=-1,10,1
        s = s + a(i,m)
        a(i,m) = 0.
   10 continue
      print *,s,a
      end
