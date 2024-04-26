      integer :: a(10000),b(10000)
      integer :: c(-10:10)=(/ (i,i=-10,10) /)

      do i=1,10000
        a(i) = c(1)+c(2)+c(3)+c(4)+c(5)+c(6)+c(7)+c(8)+c(9)+c(10)
        b(i) = c(1)     +c(3)     +c(5)     +c(7)     +c(9)
      end do
      do i=1,10000
        if (a(i).ne.55)   stop 'ng'
        if (b(i).ne.25)   stop 'ng'
      end do

      do i=1,10000
        a(i) = a(i) +c(-1)+c(-2)+c(-3)+c(-4)+c(-5)+c(-6)+c(-7)
     &              +c(-8)+c(-9)+c(-10)
        b(i) = b(i) +c(-1)      +c(-3)      +c(-5)      +c(-7)
     &              +c(-9)
      end do

      do i=1,10000
        if (a(i).ne.0)   stop 'ng'
        if (b(i).ne.0)   stop 'ng'
      end do
      print *,'ok'
      end
       
      
