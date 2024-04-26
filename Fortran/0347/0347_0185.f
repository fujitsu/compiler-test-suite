      dimension  a(10,10),b(10,10),c(10,10)
      do 10 i=1,10
       do 10 j=1,10
         a(i,j) = 2.0
         b(i,j) = 3.0
         c(i,j) = 4.0
 10   continue
      do 20 i=3,7
       do 20  j=2,8
        a(i,j) = b(i,j) + c(i,j)
        b(j,i) = a(j,i) * c(i,j)
 20   continue
      write(6,*) ((a(k,l),k=3,5),l=6,8)
      write(6,*) ((b(k,l),k=5,7),l=3,5)
      stop
      end
