      integer a(100,100,100)
      a=1
      do 10 i=1,10
         k = 1+i
         do 20 j=1,10
            a(i,j,k) = 1
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            write(6,*) a(i,j,k)
 200     continue
 100  continue
      stop
      end
