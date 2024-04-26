      real a(2000,1000),b(2000,1000),c(2000,1000),d(2000)
      data a/2000000*2./
      data b/2000000*3./
      data c/2000000*4/
      do i=1,2000
        d(i)=1.+i
        do j=1,1000
          do k=1,1000
            a(i,j)=b(i,k)*c(k,j)
          enddo
        enddo
      enddo
      print *,a(1,10),a(10,100),a(100,1000)
      print *,d(10),d(100),d(1000)
      end
