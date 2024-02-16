      real a(10,10)
      k=1
      a=1
      do 10 i=1,10
      do 10 j=1,10
      a(i,k)=a(k,j)
10    continue
      print *,"*** OK ***"
      end
