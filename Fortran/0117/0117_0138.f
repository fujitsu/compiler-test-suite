      integer a(100,100)
      a = 1
      do 13 i=1,10
         do 23 j=i+10,1,-1
            a(i,j) = a(j,i)
 23      continue
 13   continue
      do 10 i=1,10
         do 20 j=i+10,1,-1
            write(6,*) a(i,j)
 20      continue
 10   continue
      end
