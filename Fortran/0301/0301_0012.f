      real*4    b(20,20,20)
      do 5 i=1,20
         do 5 j=1,20
            do 5 k=1,20
               b(i,j,k) = 3.0
 5    continue
      write(6,*) b(1,1,1)
      end
