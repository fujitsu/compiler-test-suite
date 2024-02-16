      integer a(100,100,100), b(100,100,100)
      b = 1
      do 10 i=1,10
         do 20 j=1,10
            a(i,j,1) = 1
            do 30 k=1,10
               a(i,j,1) = 1
 30         continue
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            do 300 k=1,10
               write(6,*) a(i,j,1)
 300        continue
 200     continue
 100  continue
      stop
      end
