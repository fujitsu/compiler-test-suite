      integer a(100,100)
      do 10 i=1,10
         do 20 j=1,10
            a(I,j) = 1
            if(1.eq.i) k=100
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            write(6,*) a(I,j)
 200     continue
 100  continue
      stop
      end
