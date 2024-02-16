      complex*16 c
      complex*16,parameter::res= (-112.0000000000000D0,
     &                             384.0000000000000D0)
      complex*16,parameter::error=(   0.000000000001,   0.000000000001)
      real*8    d
      call sub(c)
      d = 4.0
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
