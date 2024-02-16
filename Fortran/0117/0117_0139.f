      integer a(100,100)
      a = 1
      do 14 i=10,1,-1
         do 24 j=i+10,1,-1
            a(i,j) = a(j,i)
 24      continue
 14   continue
      do 10 i=10,1,-1
         do 20 j=i+10,1,-1
            write(6,*) a(i,j)
 20      continue
 10   continue
      end
