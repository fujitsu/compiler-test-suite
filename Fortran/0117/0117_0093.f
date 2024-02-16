      integer a(100,100),b(100,100)
      do 10 i=1,10
         do 20 j=1,10
            a(i,j) = 1
            b(i,j) = a(i,j)
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            write(6,*) a(i,j)
            write(6,*) b(i,j)
 200     continue
 100  continue
      stop
      end
