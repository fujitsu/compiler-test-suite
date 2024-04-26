      real*8 a(5,1),b(5,1),cc(5)/5*1/

      do i=1,5
         do j=1,1
            a(i,j) = sin(cc(2))
            b(i,j) = cos(cc(2))
         enddo
      enddo
      write(6,1) a
      write(6,1) b
 1    format(5f10.3)
      end
