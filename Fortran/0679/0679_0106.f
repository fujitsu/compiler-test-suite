      dimension a(10,10,10),b(10,10,10),c(10,10,10)
      data  a,b,c/1000*1.0,1000*2.0,1000*3.0/

      do 10 i=1,10
      do 10 j=1,9
      do 10 k=1,10
          a(i,j+1,k) = a(i,j+1,k) + b(i,j+1,k) + c(i,j+1,k)
   10 continue

      print *,a
      stop
      end
