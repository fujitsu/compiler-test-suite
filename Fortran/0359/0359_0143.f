      complex*8  a(10)/10*(10,20)/
      complex*8  b(10)/10*(30,40)/
      complex*16 x(10)/10*(50,60)/
      complex*16 y(10)/10*(70,80)/

      do i=1,7
         a(i) = cmplx(1.0, imag(a(i)))
      enddo
      write(6,1) a
      do i=1,7
         b(i) = cmplx(real(b(i)), 3.0)
      enddo
      write(6,1) b
      do i=1,3
         x(i) = cmplx(6.0, imag(x(i)))
      enddo
      write(6,1) x
      do i=1,3
         y(i) = cmplx(real(y(i)), 9.0)
      enddo
      write(6,1) y
 1    format(10('(',f5.2,1x,',',1x,f5.2,')',2x))
      end
