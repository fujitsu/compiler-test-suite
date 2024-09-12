      dimension a(10,10,10,20),b(10,10,10,10)
      data  a,b/20000*1.0,10000*2.0/

      do 10 i=1,10
      do 10 j=1,10
      do 10 k=1,10
      do 10 l=1,10
          a(i,j,k,l) = a(i,j,k,l+1) + b(i,j,k,l)
   10 continue

      print *,a(1,1,1,1),a(3,3,3,3),a(10,10,10,10)
      stop
      end
