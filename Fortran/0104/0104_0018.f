      complex*16 c
      complex*16,parameter::res =(16.00000000000002D0,
     &                            88.00000000000007D0)
      complex*16,parameter::error=( 0.0000000000001,  0.0000000000001)
      real*8    d
      call sub(c)
      d = 3.0
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
