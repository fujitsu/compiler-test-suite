      subroutine subr8(a)
      real(kind=8) a,d1,d2
      d1 = a**0.5
      d2 = sqrt(a)
      a = d1 - d2
      end subroutine

      subroutine subr16(a)
      real(kind=16) a,d1,d2
      d1 = a**0.5
      d2 = sqrt(a)
      a = d1 - d2
      end subroutine

      subroutine inir8(a)
      real(kind=8) a
      a = 1.3
      end subroutine

      subroutine inir16(a)
      real(kind=16) a
      a = 1.3
      end subroutine

      program main
      real(kind=8) r8
      real(kind=16) r16
      call inir8(r8)
      call subr8(r8)
      call inir16(r16)
      call subr16(r16)
      if (real(r8,kind=16) == r16) then
        print *,"ok"
      else
        print *,"ng"
      endif
      end program
