      logical  l(10,10,10)
      dimension  a(10,10,10),b(10,10,10),c(10,10,10)
      data  l/250*.true.,500*.false.,250*.true./
      data  a,b,c/1000*1.0,1000*2.0,1000*3.0/

      do 10 i=1,10
       do 10 j=1,10
        do 10 k=1,10
         if(l(i,j,k)) then
           a(i,j,k) = b(i,j,k) + c(i,j,k)
         endif
         c(i,j,k) = a(i,j,k) * 2.0
   10 continue

      print *,a,c
      stop
      end
