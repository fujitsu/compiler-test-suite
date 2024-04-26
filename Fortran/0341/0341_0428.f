      integer a(100,100)
      integer x
      a=1
      do 10 i=5,10
         x = 1
         do 20 j=1,10
            a(i,j) = a(i,j)
 20      continue
 10   continue
      do 100 i=5,10
         do 200 j=1,10
            write(6,*) a(i,j)
 200     continue
 100  continue
      stop
      end
