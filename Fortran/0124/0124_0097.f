      subroutine sub(a)
      real a,d1,d2
      d1 = a**0.5
      d2 = sqrt(a)
      a = d1 - d2
      end subroutine

      subroutine ini(a)
      real a
      a = 1.3
      end subroutine

      program main
      real r4
      call ini(r4)
      call sub(r4)
      if (int(r4) == 0) then
        print *,"ok"
      else
        print *,"ng"
      endif
      end program
