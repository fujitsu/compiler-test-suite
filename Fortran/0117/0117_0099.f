      integer a(100,100),b(100,100)
      b = 1
      do 10 i=1,10
         do 20 j=1,10
            a(3,j+5)      = 1
            a(i+10,j)     = 2
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            write(6,*) a(3,j+5)
            write(6,*) a(i+10,j)
 200     continue
 100  continue
      stop
      end
