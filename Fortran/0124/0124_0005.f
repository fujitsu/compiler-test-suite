c 

      program main

      complex*8 a

      a = (1.0, 1.0)

c
      a = 2.0 - a

      if ((real(a).eq.1.0).and.(aimag(a).eq.-1.0)) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end
