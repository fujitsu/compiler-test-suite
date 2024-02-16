      integer a(100,100)
      a = 1
      do 12 i=10,1,-1
         do 22 j=i+1,10
            a(i,j) = a(j,i)
 22      continue
 12   continue
      do 10 i=10,1,-1
         do 20 j=i+1,10
            write(6,*) a(i,j)
 20      continue
 10   continue
      end
