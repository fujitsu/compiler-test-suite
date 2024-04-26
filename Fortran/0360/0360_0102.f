      call c8
      call c16
      end

      subroutine c8
      complex*8 c8a(16),c8b(16),c8c(16)

      do i=1,16,2
         c8b(i) = cmplx(i,-2)
         c8b(i+1) = cmplx(-i-1,4)
         c8c(i) = 2
         c8c(i+1) = 3
      enddo

      do i=1,16
         c8a(i) = c8b(i) * c8c(i)
      enddo
      write(6,*) c8a
      end

      subroutine c16
      complex*16 c16a(16),c16b(16),c16c(16)

      do i=1,16,2
         c16b(i) = cmplx(i,-2)
         c16b(i+1) = cmplx(-i-1,4)
         c16c(i) = 2
         c16c(i+1) = 3
      enddo

      do i=1,16
         c16a(i) = c16b(i) * c16c(i)
      enddo
      write(6,*) c16a
      end
