      integer a(100,100)
      a = 1
      k=1
      l=1
      m=1
      do 10 i=10,k
         do 10 j=1,10
            a(i,j) = 1
 10   continue
      do 20 i=k,10
         do 20 j=1,10
            a(i,j) = 1
 20   continue
      do 30 i=k,l
         do 30 j=1,10
            a(i,j) = 1
 30   continue
      do 40 i=1,10,k
         do 40 j=1,10
            a(i,j) = 1
 40   continue
      do 50 i=1,10,1
         do 50 j=k,l,m
            a(i,j) = 1
 50   continue
      print *,a(1,1)
      print *,a(4,5)
      print *,a(10,10)
      end
