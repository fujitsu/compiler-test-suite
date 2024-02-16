      integer a(100,100)
      a = 1
      do 16 i=10,1,-1
         do 26 j=1,i+1
            a(i,j) = a(j,i)
 26      continue
 16   continue
      do 10 i=10,1,-1
         do 20 j=1,i+1
            write(6,*) a(i,j)
 20      continue
 10   continue
      end
