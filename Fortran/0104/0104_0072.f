      complex c, cc
      complex,parameter::res= (36.0000000,48.0000000)
      complex,parameter::error=( 0.000001,  0.000001)
      real    d1,d2,d3
      call sub(c)
      d1 = 2.0
      d2 = 2.0
      d3 = 2.0
      cc = c**d1 + c**d2 + c**d3
      if ((abs(real(cc)-real(res)) <= real(error)) .and.
     &    (abs(imag(cc)-imag(res)) <= imag(error))) then
         print *,'ok'
      else
         print *,'ng',cc
      endif
      end

      subroutine sub(c)
      complex c
      c = (4.0,2.0)
      end
