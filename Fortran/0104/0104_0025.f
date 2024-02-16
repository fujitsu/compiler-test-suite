      complex*16 c
      complex*16,parameter::res =(60422.10771787578D0,
     &                           -103604.5178831268D0)
      complex*16,parameter::error=(    0.000000001,       0.00000001)
      call sub(c)
      c = c**2.0_4
      c = c**3.0_4
      c = c**4.0_4
      if ((abs(real(c)-real(res)) <= real(error)) .and.
     &    (abs(imag(c)-imag(res)) <= imag(error))) then
         print *,'ok'
      else
         print *,'ng',c,res
      endif
      end

      subroutine sub(c)
      complex*16 c
      c = (1.2,1.1)
      end
