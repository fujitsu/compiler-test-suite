      dimension a(10,10,10,10),b(10,10,10,10),c(10,10,10,10)
      data  a,b,c/10000*1.0,10000*2.0,10000*3.0/

      do 10 m=1,10
      do 10 i=1,10
      do 10 j=1,10
      do 10 k=1,10
      do 10 l=1,10
          a(i,j,k,l) = a(i,j,k,l) + b(i,j,k,l) + c(i,j,k,l)
   10 continue

      print *,a(5,5,5,5),a(2,2,2,2)
      stop
      end
