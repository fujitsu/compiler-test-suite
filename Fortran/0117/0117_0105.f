      integer a(100)
      a = (/(i,i=1,100)/)
      do 10 i=5,10
         do 20 j=1,10
            a(i) = a(i+1)+a(i+2)
 20      continue
 10   continue

      do 100 i=5,10
         do 200 j=1,10
            write(6,*) a(i)
 200     continue
 100  continue
      stop
      end
