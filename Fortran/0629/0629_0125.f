      real*8 a(10,10,10)
      a=1
      do 17 i=1,3
        do 17 j=1,3,a(1,1,1)
         do 17 k=1,3
          a(i,j,k) = a(i,j,k) + 1
17    continue
      print *,a
      end
