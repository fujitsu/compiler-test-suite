      complex*32 c
      complex*32,parameter::res=(12.0,16.0)
      complex*32,parameter::error=(0.000001,0.000001)
      integer*4  i
      call sub(c)
      i = 2
      c = c**i
      if ((abs(real(c)-real(res)) <= real(error)) .and.
     &    (abs(imag(c)-imag(res)) <= imag(error))) then
         print *,'ok'
      else
         print *,'ng'
      endif
      end

      subroutine sub(c)
      complex*32 c
      c = (4.0,2.0)
      end
