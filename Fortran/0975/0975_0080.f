      integer a(100,100),b(100,100)

      do 20 jj=1,100
         do 20 ii=1,100
            a(ii,jj) = ii*100+jj
            b(ii,jj) = 0
 20      continue


      do 10 j=2,99
         do 10 i=2,99
            a(i+1,j+1) = a(i,j)+b(j,i)
 10      continue

      print *,i,j,a(1,1),a(20,20)
      end
