      call c8
      call c16
      end

      subroutine c8
      complex a(10),b(10),c(10),ss
      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i)
         c(i) = cmplx(i*2,i*2)
      enddo

      ss = 0.0
      do i=1,10
         ss = ss + a(i) 
      enddo
      write(6,*) ss

      do i=1,10
         ss = a(i) + b(i) - c(i)
      enddo
      write(6,*) ss
      return
      end

      subroutine c16
      complex*16 a(10),b(10),c(10),ss
      do i=1,10
         a(i) = 0
         b(i) = cmplx(i,i)
         c(i) = cmplx(i*2,i*2)
      enddo

      ss = 0.0
      do i=1,10
         ss = ss + a(i) 
      enddo
      write(6,*) ss

      do i=1,10
         ss = a(i) + b(i) - c(i)
      enddo
      write(6,*) ss
      return
      end

