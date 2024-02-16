      complex*16 c
      complex*16,parameter::res =(-367616.0000000007D0,
     &                            -613888.0000000003D0)
      complex*16,parameter::error=(      0.000000001,       0.000000001)
      real*8    d
      call sub(c)
      d = 9.0
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
