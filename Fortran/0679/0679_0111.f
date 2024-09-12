      dimension  a(10,10,500),b(10,10,500),c(10,10,500)
      data  a,b,c/50000*1.0,50000*2.0,50000*3.0/

      do 30 i=1,10
       do 20 j=1,10
         do 10 k=1,500,2
           a(i,j,k) = a(i,j,k) + c(i,j,k)
           b(i,j,k) = b(i,j,k) * a(i,j,k)
   10    continue
   20   continue
   30 continue

      write(6,*) a(10,10,1),b(1,1,10),b(1,1,11)
      stop
      end
