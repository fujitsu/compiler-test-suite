      complex*16 c, cc
      complex*16,parameter::res= (-179284.0000000002,-85112.00000000007)
      complex*16,parameter::error=(0.00001,0.000001)
      real*8     d1,d2,d3,d4,d5,d6,d7
      call sub(c)
      d1 = 2.0
      d2 = 3.0
      d3 = 4.0
      d4 = 5.0
      d5 = 6.0
      d6 = 7.0
      d7 = 8.0
      cc = c**d1 + c**d2 + c**d3 + c**d4 + c**d5 + c**d6 + c**d7
      if ((abs(real(cc)-real(res)) <= real(error)) .and.
     &    (abs(imag(cc)-imag(res)) <= imag(error))) then
         print *,'ok'
      else
         print *,'ng',cc
      endif
      end

      subroutine sub(c)
      complex*16 c
      c = (4.0,2.0)
      end
