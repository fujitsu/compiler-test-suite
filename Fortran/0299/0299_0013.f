      real a(1000,1000),b(1000,1000),c(1000,1000),d(1000,1000)
      data a/1000000*2./
      data b/1000000*3./
      data c/1000000*4/
      do i=1,1000
        do j=1,1000
          d(i,j)=1.+i
          do k=1,1000
            a(i,j)=a(i,j)+b(i,k)*c(k,j)
          enddo
        enddo
      enddo
      print *,a(1,10),a(10,100),a(100,1000)
      print *,d(1,10),d(10,100),d(100,1000)
      end
