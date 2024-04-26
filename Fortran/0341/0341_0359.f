      real b(10)
      b=1
      do 10 i=1,10
      do 10 j=1,10
      b(i) = b(j)
10    continue
      print *,"*** OK ***"
      end
