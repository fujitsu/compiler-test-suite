      call c8
      call c16
      end

      subroutine c8
      complex a(10),b(10),c(10)

      do i=1,10
         a(i) = (1.,2.)
      enddo
      write(6,*) a

      do i=1,10
         b(i) = a(1)
      enddo
      write(6,*) b

      do i=1,10
         c(i) = cmplx(real(a(i)),i)
      enddo
      write(6,*) c
      return
      end

      subroutine c16
      complex*16 a(10),b(10),c(10)

      do i=1,10
         a(i) = (1.,2.)
      enddo
      write(6,*) a

      do i=1,10
         b(i) = a(1)
      enddo
      write(6,*) b

      do i=1,10
         c(i) = cmplx(real(a(i)),i)
      enddo
      write(6,*) c
      return
      end

