      integer a(100)
      do 10 i=1,10
         do 20 j=i+1,10
            a(I+10) = 1
            a(j)    = 2
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=i+1,10
            write(6,*) a(I+10)
            write(6,*) a(j)
 200     continue
 100  continue
      stop
      end
