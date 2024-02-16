      real b(10)
      data b/1,2,3,4,5,6,7,8,9,10/
      do 10 i=1,10
      do 10 j=1,10
      b(i) = b(j)
10    continue
      print *,"*** OK ***"
      end
