      call c8
      call c16
      end

      subroutine c8
      complex a(10),b(10),c(10)
      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i)
         c(i) = cmplx(i*2,i*2)
      enddo

      do i=1,10
        a(i) = c(1)
        b(i) = b(i) +c(1)
      end do
      write(6,*) a
      write(6,*) b

      do i=1,10
        a(i) = a(i) +c(1)
        b(i) = b(i) +c(1)
      end do

      write(6,*) a
      write(6,*) b
      return
      end

      subroutine c16
      complex*16 a(10),b(10),c(10)
      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i)
         c(i) = cmplx(i*2,i*2)
      enddo

      do i=1,10
        a(i) = c(1)
        b(i) = b(i) +c(1)
      end do
      write(6,*) a
      write(6,*) b
      do i=1,10
        a(i) = a(i) +c(1)
        b(i) = b(i) +c(1)
      end do
      write(6,*) a
      write(6,*) b
      return
      end

