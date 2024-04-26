      integer ::b(10)=10
      complex ::d(10)=(2.0,4.0)
      call sub(b,d,10)
      print *,'ok'
      end

      subroutine sub(b,d,n)
      integer a(1000),b(n)
      complex c(1000),d(n)

      do i=1,1000
        a(i)=b(1)
        c(i)=d(1)
      end do

      do i=1,1000
        if (a(i)      .ne.b(1)      ) stop 'ng'
        if (real(c(i)).ne.real(d(1))) stop 'ng'
        if (imag(c(i)).ne.imag(d(1))) stop 'ng'
      end do
      end

