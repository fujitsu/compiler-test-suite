      real a(1000,1000,2),b(1000,1000),c(1000,1000)
      a=2.
      b=3.
      c=4.
      do i=1,1000
        do j=1,1000
          do k=1,1000
            a(i,j,1)=a(i,j,1)+b(i,k)*c(k,j)
          enddo
        enddo
      enddo
      print *,a(1,10,1),a(10,100,1),a(100,1000,1)
      end

