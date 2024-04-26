      real*8 a(10,10),b(10,10),c(10,10)
      do 1 j=1,10
      do 1 i=1,10
      a(i,j) = i
      b(i,j) = j
      c(i,j) = i
1     continue
      k=1
      l=1
      m=10
      n=10
      do 10 i=1,10
      do 10 j=l,n
      a(i,j) = a(i,j)+b(i,j)*c(i,j)
10    continue
      print *,a
      end
