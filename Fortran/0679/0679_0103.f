      dimension a(10,20),b(10,10)
      data  a,b/200*1.0,100*2.0/

      do 10 i=1,10
      do 10 j=1,10
          a(i,j) = a(i,j+1) + b(i,j)
   10 continue

      print *,a
      stop
      end
