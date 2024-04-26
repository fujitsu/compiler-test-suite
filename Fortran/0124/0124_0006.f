
      program main

      real*4 dum
      complex*8 a
      complex*8 b
      complex*8 res

      dum = sin(0.0)
      a = cmplx(dum,dum)
      b = cmplx(dum,dum)

      a = a + 2.0
      b = b + 3.0

      res = a + b
      if ((real(res).eq.5.0).and.(aimag(res).eq.0.0)) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
