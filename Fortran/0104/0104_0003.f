      complex*16 c
      complex*32 d
      complex*16,parameter::res=(12.0,16.0)
      complex*16,parameter::error=(0.000001,0.000001)
      call sub(c)
      d = (2.0,0.0)
      c = c**d
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
