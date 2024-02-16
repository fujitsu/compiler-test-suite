c 

      program main

      real*4 a
      complex*8 b
      complex*8 c
      complex*8 res

      a = sin(0.0)
      c = cmplx(a,a)

c
      a = a + 3.0

c
      b = a + 4.0

c
      c = c + b 

      res = b + c + a

      if ((real(res).eq.17.0).and.(aimag(res).eq.0.0)) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
