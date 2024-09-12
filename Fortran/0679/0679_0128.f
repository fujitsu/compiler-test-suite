      dimension a(-10:-1,-10:-1),b(-10:-1,-10:-1),c(-10:-1,-10:-1)
      data  a,b,c/100*1.0,100*2.0,100*3.0/

      do 10 j=-10,-1
        do 10 i=-10,-1
          a(i,j) = a(i,j) + b(i,j) + c(i,j)
   10 continue

      print *,a
      stop
      end
