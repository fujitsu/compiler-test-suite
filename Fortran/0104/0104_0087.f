      subroutine sub(a)
      d1 = a
      a = sqrt(d1)
      end subroutine

      subroutine ini(a)
      a = 1.9
      end subroutine

      program main
      real a
      real,parameter :: ans  = 1.37840486
      real,parameter :: error =    0.00060
      call ini(a)
      call sub(a)
      if (abs(a-ans) <= error) then
         print *,"OK"
      else
         print *,"NG ", a, "ans = ",ans
      endif
      end program
