      real*8 a080(-4:+5,-4:+5),b080(-4:+5,-4:+5)
      data   a080,b080/100*0.1d0,100*0.2d0/
      do 10 i=1,5,1
        do 10 j=-4,0,1
          a080(i,j) = a080(i,j)
          b080(i,j) = b080(i,j)
          a080(i,i) = a080(j,j)
          b080(i,i) = b080(j,j)
10    continue
      print *,a080
      print *,b080
      stop
      end
