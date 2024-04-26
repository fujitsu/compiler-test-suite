      real u(10)
      real x(10,10)
      real d(10,10,10)/1000*4/

      do 4  i=1,10
         do 3  j=1,10
            x(i,j)=2

            do 2  k=1,10
               if (d(j,i,k).gt.2) then
               endif
 1             continue
 2          continue
 3       continue
 4    continue

      write(6,*) x(1,1),x(5,5)
      end
