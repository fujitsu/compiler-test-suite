      integer a(100,100)
      a = 1
      do 10 i=1,10
         do 20 j=10,i+1,-1
            a(i,j) = a(j,i)
 20      continue
 10   continue
      do 11 i=1,10
         do 21 j=10,i+1,-1
            write(6,*) a(i,j)
 21      continue
 11   continue
      end
