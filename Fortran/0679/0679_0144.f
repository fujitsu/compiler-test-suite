      dimension a(10,20),b(10,20),c(10,20)
      data  a,b,c/200*1.0,200*2.0,200*3.0/

      do 10 i=1,10
      do 10 j=1,20,2
          a(i,j) = a(i,j) + b(i,j) + c(i,j)
   10 continue

      print *,a
      stop
      end
