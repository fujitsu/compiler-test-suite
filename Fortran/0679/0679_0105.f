      dimension a(10,10,10,10),b(10,10,10,10)
      data  a,b/10000*1.0,10000*2.0/

      do 10 i=1,10
      do 10 j=1,10
      do 10 k=1,i
      do 10 l=1,j
          a(i,j,k,l) = a(i,j,k,l) + b(i,j,k,l)
   10 continue

      print *,a
      stop
      end
