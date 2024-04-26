      integer a(100,100)
      a = 1
      do 30 i=1.0d+1,10
         do 30 j=1,10
            a(i,j) = 1
 30   continue
       print *,a(1,1)
       print *,a(2,3)
       print *,a(4,5)
       print *,a(9,10)
      end
