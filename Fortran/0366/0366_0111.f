      type tag
        integer n(2)
        complex c(2)
      end type
      type (tag) ::t(10000)
      integer a(10000)
      real    b(10000)

      do i=1,10000
        t(i)%n(1) = 2
        t(i)%n(2) = 2
        t(i)%c(1) = (2.0,4.0)
        t(i)%c(2) = (2.0,4.0)
      end do
      do i=1,10000
        a(i) = t(i)%n(1)       + t(i)%n(2)
        b(i) = real(t(i)%c(1)) + imag(t(i)%c(2))
      end do

      do i=1,10000
        if (a(i).ne.4)    stop 'ng'
        if (b(i).ne.6.0)  stop 'ng'
      end do
      print *,'ok'
      end
