      call c8
      call c16
      end

      subroutine c8
      complex*8 a(10),b(10)
      real*4     c(10)

      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i+2)
         c(i) = i
      enddo

      do i=1,10
         a(i) = b(i) * c(i)
      enddo

      write(6,*) a
      end

      subroutine c16
      complex*16 a(10),b(10)
      real*8     c(10)

      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i+2)
         c(i) = i
      enddo

      do i=1,10
         a(i) = b(i) * c(i)
      enddo

      write(6,*) a
      end

