      call c8r
      call c16r
      call c8i
      call c16i
      end

      subroutine c8r
      complex*8 a(10),b(10),c(10)

      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i+2)
         c(i) = cmplx(i+4,i+6)
      enddo

      do i=1,10
         a(i) = b(i) * real(c(i))
      enddo

      write(6,*) a
      end

      subroutine c16r
      complex*16 a(10),b(10),c(10)

      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i+2)
         c(i) = cmplx(i+4,i+6)
      enddo

      do i=1,10
         a(i) = b(i) * real(c(i))
      enddo

      write(6,*) a
      end


      subroutine c8i
      complex*8 a(10),b(10),c(10)

      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i+2)
         c(i) = cmplx(i+4,i+6)
      enddo

      do i=1,10
         a(i) = b(i) * imag(c(i))
      enddo

      write(6,*) a
      end

      subroutine c16i
      complex*16 a(10),b(10),c(10)

      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i+2)
         c(i) = cmplx(i+4,i+6)
      enddo

      do i=1,10
         a(i) = b(i) * imag(c(i))
      enddo

      write(6,*) a
      end

