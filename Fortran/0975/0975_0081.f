      real a(100,100),b(100,100)

      do 20 jj=1,100
         do 20 ii=1,100
            a(ii,jj) = ii*100.0+jj*1.0
            b(ii,jj) = 0.0
 20      continue


      do 10 j=1,100
         do 10 i=1,100
            a(i,j) = a(i,j)+b(j,i)+sin(i*1.0)
 10      continue

      print *,a(39,39),a(40,39),a(41,39)
      print *,a(39,40),a(40,40),a(41,40)
      print *,a(39,41),a(40,41),a(41,41)
      end
