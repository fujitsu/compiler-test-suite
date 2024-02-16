      integer a(100,100)
      a = 1
      do 18 i=20,10,-1
         do 28 j=10,i+1,-1
            a(i,j) = a(j,i)
 28      continue
 18   continue
      do 10 i=10,1,-1
         do 20 j=10,i+1,-1
            write(6,*) a(i,j)
 20      continue
 10   continue
      end
