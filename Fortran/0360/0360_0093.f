      complex*16 a(10),b(10),c(10)
      complex*16 x(10),y(10),z(10)
      common //i1,x,y,z
      do i=1,10
         a(i) = 0
         b(i) = i
         x(i) = 0
         y(i) = i
      enddo
      call c16(imag(a(1)))
      call c16_common(imag(x(1)))
      end

      subroutine c16(a)
      complex*16 a(1)
      do i=1,8
         a(i) = a(i) + 1
      enddo
      write(6,*) real(a(1))
      end

      subroutine c16_common(a)
      complex*16 a(1)
      do i=1,8
         a(i) = a(i) + 1
      enddo
      write(6,*) real(a(1))
      end

