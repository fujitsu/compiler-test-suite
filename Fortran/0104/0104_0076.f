      complex*16 c, cc
      complex*16,parameter::res=(-112.0, 384.0)
      complex*16,parameter::error=(0.000001,0.000001)
      real*8     d1
      integer*4  d2
      call sub(c)
      d1 = 2.0
      d2 = 2
      cc = (c**d1)**d2
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
