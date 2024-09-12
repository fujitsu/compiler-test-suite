      dimension  a(10,10,10),b(10,10,10),c(10,10,10)
      data  a,b,c/1000*1.0,1000*2.0,1000*3.0/

      do 30 i=1,10
       do 20 j=1,10
         do 10 k=1,10,2
           a(i,j,k) = a(i,j,k) + c(i,j,k)
           b(i,j,k) = b(i,j,k) * a(i,j,k)
   10    continue
   20   continue
   30 continue

      write(6,*) a,b
      stop
      end
