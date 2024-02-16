      integer a(100,100),b(100,100),c(100,100)
      do 10 i=1,10
         do 20 j=1,10
            do 21 k=1,10
               a(i,j) = 1
 21         continue
 20      continue
         do 30 j=1,10
            do 31 k=1,10
               b(i,j) = 1
 31         continue
 30      continue
         do 40 j=1,10
            do 41 k=1,10
               c(i,j) = 1
 41         continue
 40      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            do 210 k=1,10
               write(6,*) a(i,j)
 210        continue
 200     continue
         do 300 j=1,10
            do 310 k=1,10
               write(6,*) b(i,j)
 310        continue
 300     continue
         do 400 j=1,10
            do 410 k=1,10
               write(6,*) c(i,j)
 410        continue
 400     continue
 100  continue
      stop
      end
