      real*4 a080(10,10,10),b080(10,10,10),c080(10,10,10),d080(10,10,10)
      data   a080,b080/1000*0.130,1000*0.250/,c080,d080/2000*0/
      do 10 i=2,5,1
        do 10 j=2,5,1
          do 10 k=2,5,1
            a080(i-0,j,k) = a080(i-1,j,k)
            b080(i-0,j,k) = b080(i-1,j,k)
            c080(i+0,j,k) = a080(i-1,j,k)+b080(i-1,j,k)
            d080(i+0,j,k) = b080(i-1,j,k)-a080(i-1,j,k)
10    continue
      print *,c080
      print *,d080
      stop
      end
