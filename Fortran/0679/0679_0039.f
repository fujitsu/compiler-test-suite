      real*8 a080(10,10),b080(10,10)
      data   a080,b080/100*0.1d0,100*0.2d0/
      do 10 i=1,5
        do 10 j=6,10
          a080(i,j) = a080(i,j)
          b080(i,j) = b080(i,j)
          a080(i,i) = a080(j,j)
          b080(i,i) = b080(j,j)
10    continue
      print *,a080
      print *,b080
      stop
      end
