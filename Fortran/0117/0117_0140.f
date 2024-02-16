      integer a(100,100)
      a = 1
      do 15 i=1,10
         do 25 j=1,i+1
            a(i,j) = a(j,i)
 25      continue
 15   continue
      do 10 i=1,10
         do 20 j=1,i+1
            write(6,*) a(i,j)
 20      continue
 10   continue
      end
