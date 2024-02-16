      real*8 a(10,10),b(10,10),c(10,10)
      a = 0.0
      b = 3.0
      c = 3.0
      l = 1
      do 10 i=1,10
         do 20 j=1,10
            do 30 k=l,10
               a(i,j) = a(i,j) + b(i,k)*c(k,j)
 30         continue
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            do 300 k=l,10
               write(6,*) a(i,j)
 300        continue
 200     continue
 100  continue
      end
