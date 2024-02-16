      integer a(100,100)
      do 10 i=1,10
         do 20 j=1,10
            a(i*i+0,j+10) = 1
            a(i+10,j+20) = 2
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            write(6,*) a(i*i+0,j+10)
            write(6,*) a(i+10,j+20)
 200     continue
 100  continue
      stop
      end
