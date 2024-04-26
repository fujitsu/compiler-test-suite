      complex*8 a(10),b(10),c(10)
      complex*8 x(10),y(10),z(10)
      common //i1,x,y,z
      do i=1,10
         a(i) = i
         x(i) = i
      enddo
      call c8(imag(a(1)))
      call c8_common(imag(x(1)))
      end

      subroutine c8(a)
      complex*8 a(10)
      do i=1,9
         a(i) = a(i) + 1
      enddo
      write(6,*) real(a(1))
      end

      subroutine c8_common(a)
      complex*8 a(10)
      do i=1,9
         a(i) = a(i) + 1
      enddo
      write(6,*) real(a(1))
      end

