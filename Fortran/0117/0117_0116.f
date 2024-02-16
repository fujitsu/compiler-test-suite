      integer a(100,100,100)
      a = 0
      do 10 i=1,10
         if(i.eq.1) go to 30
         do 20 j=1,10
            do 40 k=1,10
               a(i,j,k) = 1
 40         continue
 20      continue
 30      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            do 400 k=1,10
               write(6,*) a(i,j,k)
 400        continue
 200     continue
 100  continue
      end
