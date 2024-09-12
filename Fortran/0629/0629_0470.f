      real*8 a(10,10,10)/1000*1./

      do 18 i=1,10
        do 18 j=1,10
         do 18 k=1,10,a(1,1,1)
          a(i,j,k) = a(i,j,k) + 1
18    continue
      print *,a
      end
