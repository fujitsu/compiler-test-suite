      real*8 a(10000)
      do i=1,10000
         a(i) = 0
      enddo
      do i=2,10000
         do j=2,100
            a(i)=a(i-1)+j
         enddo
      enddo
      do j=1,100
         do k=1,100
            do i=1,100
               a(i+j+k) = 30
            enddo
         enddo
      enddo
      write(6,*) a(5)
      end
