      complex*16 c,e
      complex*16 c1,c2,c3,c4
      complex*16 e1,e2,e3,e4,ans
      real*8    d1,d2,d3,d4
      complex*16,parameter::res= (0.0,0.0)
      complex*16,parameter::error=(0.00000000001,0.00000000001)
      call sub(c)
      call sub(e)
      d1 = 2.0
      d2 = 3.0
      d3 = 4.0
      d4 = 5.0
      c1 = c**d1
      c2 = c**d2
      c3 = c**d3
      c4 = c**d4
      e1 = e**d1
      e2 = e**d2
      e3 = e**d3
      e4 = c**d4
      ans = (c1-e1)+(c2-e2)+(c3-e3)+(c4-e4)
      if ((abs(real(ans)-real(res)) <= real(error)) .and.
     &    (abs(imag(ans)-imag(res)) <= imag(error))) then
         print *,'ok'
      else
         print *,'ng',ans
      endif
      end

      subroutine sub(c)
      complex*16 c
      c = (4.0,2.0)
      end
