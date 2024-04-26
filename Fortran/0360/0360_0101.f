      call c8
      call c16
      end

      subroutine c8
      complex*8 c8a(16),c8b(16)
      real*4    r4a(16)

      do i=1,16,2
         r4a(i) = i
         r4a(i+1) = i+1
         c8b(i) = cmplx(i,-2)
         c8b(i+1) = cmplx(-i-1,4)
      enddo

      do i=1,16
         c8a(i) = r4a(i) + c8b(i)
      enddo
      write(6,*) c8a
      end

      subroutine c16
      complex*16 c16a(16),c16b(16)
      real*8    r8a(16)

      do i=1,16,2
         r8a(i) = i
         r8a(i+1) = i+1
         c16b(i) = cmplx(i,-2)
         c16b(i+1) = cmplx(-i-1,4)
      enddo

      do i=1,16
         c16a(i) = r8a(i) + c16b(i)
      enddo
      write(6,*) c16a
      end
