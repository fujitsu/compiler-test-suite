      call c8a
      call c16a
      call c8b
      call c16b
      end

      subroutine c8a
      complex*8 a,b(10)
      real*4     c(10)

      do i=1,10
         a = 0
         b(i) = cmplx(i,i+2)
         c(i) = i
      enddo

      do i=1,10
         a = a + c(i) * c(i)
      enddo

      write(6,*) a
      end

      subroutine c16a
      complex*16 a,b(10)
      real*8     c(10)

      do i=1,10
         a = 0
         b(i) = cmplx(i,i+2)
         c(i) = i
      enddo

      do i=1,10
         a = a + c(i) * c(i)
      enddo

      write(6,*) a
      end

      subroutine c8b
      complex*8 a(10),b(10)
      real*4     c(10)

      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i+2)
         c(i) = i
      enddo

      do i=1,10
         a(1) = a(1) + c(i) * c(i)
      enddo

      write(6,*) a(1)
      end

      subroutine c16b
      complex*16 a(10),b(10)
      real*8     c(10)

      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i+2)
         c(i) = i
      enddo

      do i=1,10
         a(1) = a(1) + c(i) * c(i)
      enddo

      write(6,*) a(1)
      end

