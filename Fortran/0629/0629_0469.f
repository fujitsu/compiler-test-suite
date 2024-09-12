      real a(100),b(1000),c(10000)
      do i=1,100
        a(i)=i+3
      enddo
      do j=1,1000
        b(j)=j+5
      enddo
      do i=1,10000
        c(i)=i+3
      enddo
      write(6,*) a(5),b(5),c(5)
      end
