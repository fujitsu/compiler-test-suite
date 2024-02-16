      integer a(100,100),b(100,100)
      b = 1
      do 10 i=1,10
         do 20 j=1,10
            a(i+0,j+5)  = b(i,j+10)
            a(i+10,j+0) = b(i,j+0)
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            write(6,*) a(i+0,j+5)
            write(6,*) a(i+10,j+0)
 200     continue
 100  continue
      stop
      end
