      complex :: a(10000),b(10000),c(-10:10)
      data c /5*(-8.0,-16.0),5*(-2.0, -4.0),(0.0,0.0),
     &        5*( 2.0,  4.0),5*( 8.0, 16.0)/

      do i=1,10000
        a(i) = c(1)+c(2)+c(3)+c(4)+c(5)+c(6)+c(7)+c(8)+c(9)+c(10)
        b(i) = c(1)     +c(3)     +c(5)     +c(7)     +c(9)
      end do

      do i=1,10000
        if (real(a(i)).ne.50.0)    stop 'ng'
        if (imag(a(i)).ne.100.0)   stop 'ng'
        if (real(b(i)).ne.22.0)    stop 'ng'
        if (imag(b(i)).ne.44.0)    stop 'ng'
      end do

      do i=1,10000
        a(i) = a(i) +c(-1)+c(-2)+c(-3)+c(-4)+c(-5)+c(-6)+c(-7)
     &              +c(-8)+c(-9)+c(-10)
        b(i) = b(i) +c(-1)      +c(-3)      +c(-5)      +c(-7)
     &              +c(-9)
      end do
      
      do i=1,10000
        if (real(a(i)).ne.0.0)    stop 'ng'
        if (imag(a(i)).ne.0.0)    stop 'ng'
        if (real(b(i)).ne.0.0)    stop 'ng'
        if (imag(b(i)).ne.0.0)    stop 'ng'
      end do

      print *,'ok'
      end
       
      
