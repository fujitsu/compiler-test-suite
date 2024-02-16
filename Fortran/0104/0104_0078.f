      complex*16 c
      complex*16,parameter::res=(16.92415997915159D0,
     &                           38.76115569742363D0)
      complex*16,parameter::error=(0.000001,0.00001)
      real*8    d
      call sub(c)
      d = 2.5
      c = c**d
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
