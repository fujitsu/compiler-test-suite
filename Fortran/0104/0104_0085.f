      subroutine sub(a)
      d1 = a**1.5
      d2 = a**2.5
      d3 = a**3.5
      d4 = a**4.5
      d5 = a**5.5
      d6 = a**6.5
      d7 = a**7.5
      d8 = a**8.5
      d9 = a**9.5
      d10 = a**10.5
      a = d1+d2+d3+d4+d5+d6+d7+d8+d9+d10
      end subroutine

      subroutine ini(a)
      a = 1.9
      end subroutine

      program main
      real a
      real,parameter :: ans  = 1781.20923
      real,parameter :: error =    0.00050
      call ini(a)
      call sub(a)
      if (abs(a-ans) <= error) then
         print *,"OK"
      else
         print *,"NG ", a, "ans = ",ans
      endif
      end program
