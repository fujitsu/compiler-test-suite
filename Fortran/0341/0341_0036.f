      real*8 a(10,10),b(10,10),c(10,10)
      a=1
      b=2
      c=3
      do 10 j=1,10
      do 10 i=1,10
      do 10 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
10    continue
      do 20 j=1,10
      do 20 i=1,10
      do 20 k=1,10
        a(i,j) = a(i,j)+b(i,k)+c(k,j)
20    continue
      print *,a
      end
