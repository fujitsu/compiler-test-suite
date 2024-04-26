      integer a(100,100)
      a=1
      do 10 i=1,10
         do 20 j=1,10
            a(10,10) = 1
            a(20,j) = 2
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            write(6,*) a(10,j)
            write(6,*) a(20,j)
 200     continue
 100  continue
      stop
      end
