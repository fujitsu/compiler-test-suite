      real a(2000,2000),b(2000,2000),c(2000)
      data a/4000000*2./
      data b/4000000*3./
      data c/2000*4/
      do i=1,2000
        c(i)=i+i
        do j=1,2000
          a(i,j)=b(i,j)*j
        enddo
      enddo
      print *,a(1,10),a(10,100),a(100,1000),a(1000,2000)
      print *,c(10),c(100),c(1000),c(2000)
      end
