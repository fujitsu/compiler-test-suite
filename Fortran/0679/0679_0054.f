      real*4 a080(10,10,10),b080(10,10,10),c080(10,10,10),d080(10,10,10)
      data   a080,b080/1000*0.130,1000*0.250/
      data   c080/1000*1.0/
      data   d080/1000*1.0/
      do 10 i=1,3,2
        do 10 j=1,3,2
          do 10 k=1,3,2
            a080(i+1,j+2,k+3) = a080(i+2,j+3,k+4)
            b080(i+1,j+2,k+3) = b080(i+2,j+3,k+4)
            a080(i+2,j+3,k+4) = a080(i+1,j+2,k+3)
            b080(i+2,j+3,k+4) = b080(i+1,j+2,k+3)
            c080(i+1,j+1,k+1) = c080(i+1,j+1,k+1)+a080(i+2,j+3,k+4)
            d080(i+1,j+1,k+1) = d080(i+1,j+1,k+1)*b080(i+1,j+2,k+3)
10    continue
      print *,c080
      print *,d080
      stop
      end