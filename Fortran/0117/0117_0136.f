      integer a(100,100)
      a = 1
      do 11 i=1,10
         do 21 j=i+1,10
            a(i,j) = a(j,i)
 21      continue
 11   continue
      do 10 i=1,10
         do 20 j=i+1,10
            write(6,*) a(i,j)
 20      continue
 10   continue
      end
