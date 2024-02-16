      integer a(2,2,2),b(2,2,2)
      a = 1
      b = 1
      do 100 j=1,2
         do 100 k=1,2
            b(j,2:1:-1,k)=a(j,1:2:1,k)
 100     continue
         do 10 j=1,2
            do 10 k=1,2
               write(6,*) b(j,2:1:-1,k)
 10         continue
            end
            
