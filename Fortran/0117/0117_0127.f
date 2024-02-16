      real a(10,10),b(10,10)
      a = 1
      b = 1
      do 10 i=1,10
         if(i.eq.10) go to 11
         do 10 j=1,10
            do 10 k=1,10
               a(i,j) = i
 10         continue
 11         continue
            do 100 i=1,10
               do 100 j=1,10
                  write(6,*) a(i,j)
 100           continue
               end
