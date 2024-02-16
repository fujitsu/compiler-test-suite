      complex*16 c
      complex*16,parameter::res=(12.0,16.0)
      complex*16,parameter::error=(0.000001,0.000001)
      call sub(c)
      c = c**(2.0_16,0.0_16)
      if ((abs(real(c)-real(res)) <= real(error)) .and.
     &    (abs(imag(c)-imag(res)) <= imag(error))) then
         print *,'ok'
      else
         print *,'ng'
      endif
      end

      subroutine sub(c)
      complex*16 c
      c = (4.0,2.0)
      end
