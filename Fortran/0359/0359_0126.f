      parameter (l1=5,l2=5,l3=5)
      real u(l1)/1,2,3,4,5/
      real x(l1,l2)
      real b2(l1,l2,l3)/125*1/

      do 4  i=1,5
         do 3  j=1,5
            x(i,j)=u(i)
            do 2  k=1,5
               if (b2(i,j,k).gt.3) then
               endif
 1             continue
 2          continue
 3       continue
 4    continue

      write(6,*) x
      end
