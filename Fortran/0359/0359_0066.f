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

      do i=2,8
         a(i) = b(i+2) + c(i)
      enddo
      write(6,*) a

      do i=3,8
         a(i) = b(i+2) - c(i)
      enddo
      write(6,*) a

      do i=4,8
         a(i) = b(i+2) - c(i)
      enddo
      write(6,*) a

      do i=1,8
         a(i) = b(i+2) - c(i)
      enddo
      write(6,*) a

      do i=1,7
         a(i) = b(i+3) - c(i)
      enddo
      write(6,*) a

      do i=2,7
         a(i) = b(i+3) - c(i)
      enddo
      write(6,*) a
      return
      end

      subroutine c16
      complex*16 a(10),b(10),c(10)
      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i)
         c(i) = cmplx(i*2,i*2)
      enddo

      do i=2,8
         a(i) = b(i+2) + c(i)
      enddo
      write(6,*) a

      do i=3,8
         a(i) = b(i+2) - c(i)
      enddo
      write(6,*) a

      do i=4,8
         a(i) = b(i+2) - c(i)
      enddo
      write(6,*) a

      do i=1,8
         a(i) = b(i+2) - c(i)
      enddo
      write(6,*) a

      do i=1,7
         a(i) = b(i+3) - c(i)
      enddo
      write(6,*) a

      do i=2,7
         a(i) = b(i+3) - c(i)
      enddo
      write(6,*) a
      return
      end

