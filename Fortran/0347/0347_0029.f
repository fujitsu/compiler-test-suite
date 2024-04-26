      dimension  a(10,10),b(10,10),c(10,10)
      do 10 i=1,10
       do 10 j=1,10
         a(i,j) = 1.0
         b(i,j) = 2.0
         c(i,j) = 3.0
 10   continue
      do 20 k=1,10
       do 20 l=1,10
         a(k,l) = b(k,l) + c(k,l)
         b(k,l) = a(k,l) + c(k,l)
 20   continue
      write(6,*) ((a(i,j),i=3,4),j=5,6)
      write(6,*) ((b(i,j),i=3,4),j=5,6)
      write(6,*) ((c(i,j),i=3,4),j=5,6)
      stop
      end
