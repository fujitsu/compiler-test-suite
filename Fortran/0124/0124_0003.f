
      program main

      complex*8 a
      complex*8 b
      complex*8 c
      complex*8 res

      a = (1.0, 1.0)
      b = (3.0, 3.0)
      c = (4.0, 4.0)

      a = a - 1.0
      b = b * 1.0
      c = c / 4.0

      res = a + b + c

      if ((real(res).eq.4.0).and.(aimag(res).eq.5.0)) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
