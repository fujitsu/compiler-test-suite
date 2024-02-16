      integer a(100,100)
      integer x
      x = 1
      do 10 i=5,10
         do 20 j=1,10
            a(i+1,j) = x
            x = x + 1
 20      continue
 10   continue
      do 100 i=5,10
         do 200 j=1,10
            write(6,*) a(i+1,j)
 200     continue
 100  continue
      stop
      end
