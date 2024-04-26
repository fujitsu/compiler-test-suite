      integer a(10)
c
      do 10 j=1,10
         do 20 i=1,2
            a(i) = 100
            write(6,*) a(i)
 20      continue
 10   continue
      end
