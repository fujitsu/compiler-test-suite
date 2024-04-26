      real*8 a(10,10,10),b(10,10,10),c(10,10,10)
      a=1
      b=2
      c=3
      do 10 i=1,10,2
      do 10 k=1,10,2
      do 10 j=1,10,2
        a(i,j,k) = a(i,j,k)+b(i,k,j)+c(k,j,i)
10    continue
      print *,a
      end
