      integer a(100,100)
      a = 1
      k = 1

      do 10 j=1,10
         do 10 i=10,k
            a(i,j) = 2
 10      continue

      print *,i,j
      print *,a(1,1)
      print *,a(10,5)
      print *,a(10,10)
      end
