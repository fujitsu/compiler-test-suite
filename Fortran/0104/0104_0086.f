      subroutine sub(a)
      d1 = a**11.5
      d2 = a**12.5
      d3 = a**13.5
      d4 = a**14.5
      d5 = a**15.5
      d6 = a**16.5
      d7 = a**17.5
      d8 = a**18.5
      d9 = a**19.5
      d10 = a**20.5
      a = d1-d2+d3-d4+d5-d6+d7-d8+d9-d10
      end subroutine

      subroutine ini(a)
      a = 1.9
      end subroutine

      program main
      real a
      real,parameter :: ans  = -338918.594
      real,parameter :: error =       0.050
      call ini(a)
      call sub(a)
      if (abs(a-ans) <= error) then
         print *,"OK"
      else
         print *,"NG ", a, "ans = ",ans
      endif
      end program
