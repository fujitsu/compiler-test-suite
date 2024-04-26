
      program main

      complex*16 a
      complex*32 b

      a = (1.0, 1.0)
      b = (2.0, 2.0)

      a = a + 1.0
      b = b + 3.0

      if ((real(a) .eq. 2.0).and.(aimag(a) .eq. 1.0)
     &     .and.(real(b) .eq. 5.0).and.(aimag(b) .eq. 2.0)) then
         print *,"OK"
      else
         print *,"NG"
      endif
      end
