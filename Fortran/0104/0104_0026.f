      complex*16 c
      complex*16,parameter::res =(538974657445880.7D0,
     &                           -4060384503791647.D0)
      complex*16,parameter::error=(10.0D0,32.0D0)
      call sub(c)
      c = c**2.0_8
      c = c**3.0_8
      c = c**4.0_8
      if ((abs(real(c)-real(res)) <= real(error)) .and.
     &    (abs(imag(c)-imag(res)) <= imag(error))) then
         print *,'ok'
      else
         print *,'ng',c,res
      endif
      end

      subroutine sub(c)
      complex*16 c
      c = (4.0,2.0)
      end
