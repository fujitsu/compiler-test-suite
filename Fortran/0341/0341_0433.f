      integer a(100,100),b(100,100)
      a=1
      b = 1
      do 10 i=1,10
         do 20 j=1,10
            a(i,j) = a(1+1+i,j)
 20      continue
 10   continue
      do 11 i=1,10
         do 21 j=1,10
            write(6,*) a(i,j)
 21      continue
 11   continue
      stop
      end
