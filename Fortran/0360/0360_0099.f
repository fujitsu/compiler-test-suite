      call c8
      call c16
      end

      subroutine c8
      complex*8 c8a(16),c8b(16)
      real*4    r4a(16)

      do i=1,16,2
         c8a(i) = i
         c8a(i+1) = i+1
         c8b(i) = cmplx(i,-2)
         c8b(i+1) = cmplx(-i-1,4)
      enddo

      do i=1,16
         r4a(i) = c8a(i) + c8b(i)
      enddo
      write(6,*) r4a
      end


      subroutine c16
      complex*16 c16a(16),c16b(16)
      real*8    r8a(16)

      do i=1,16,2
         c16a(i) = i
         c16a(i+1) = i+1
         c16b(i) = cmplx(i,-2)
         c16b(i+1) = cmplx(-i-1,4)
      enddo

      do i=1,16
         r8a(i) = c16a(i) + c16b(i)
      enddo
      write(6,*) r8a
      end
