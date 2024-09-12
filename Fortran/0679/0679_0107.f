      dimension a(10,10,10),b(10,10,10),c(10,10,10)
      data  a,b,c/1000*1.0,1000*2.0,1000*3.0/

      do 10 i=1,10
      do 10 k=1,5
      do 10 j=1,10
          a(i,j,k*2) = a(i,j,k*2) + b(i,j,k*2) + c(i,j,k*2)
   10 continue

      print *,a
      stop
      end
