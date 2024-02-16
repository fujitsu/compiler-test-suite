      complex*16 c
      complex*16,parameter::res=(538974657445884.0D0,
     &                          -4060384503791617.D0)
      complex*16,parameter::error=(10.0D0,32.0D0)
      call sub(c)
      c = c**2.0_16
      c = c**3.0_8
      c = c**4.0_4
      if ((abs(real(c)-real(res)) <= real(error)) .and.
     &    (abs(imag(c)-imag(res)) <= imag(error))) then
         print *,'ok'
      else
         print *,'ng',c
      endif
      end

      subroutine sub(c)
      complex*16 c
      c = (4.0,2.0)
      end
