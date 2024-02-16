      subroutine subr8(a)
      real(kind=8) a,d1,d2
      d1 = a**0.5
      d2 = a**1.5
      a = d1 + d2
      end subroutine

      subroutine sub2r8(a)
      real(kind=8) a,d1,d2
      d1 = a**0.5_8
      d2 = a**1.5_8
      a = d1 + d2
      end subroutine

      subroutine inir8(a)
      real(kind=8) a
      a = 1.1_8
      end subroutine

      subroutine subr16(a)
      real(kind=16) a,d1,d2
      d1 = a**0.5
      d2 = a**1.5
      a = d1 + d2
      end subroutine

      subroutine sub2r16(a)
      real(kind=16) a,d1,d2
      d1 = a**0.5_16
      d2 = a**1.5_16
      a = d1 + d2
      end subroutine

      subroutine inir16(a)
      real(kind=16) a
      a = 1.1_16
      end subroutine

      program main
      real(kind=8) r8_1,r8_2
      real(kind=16) r16_1,r16_2
      call inir8(r8_1)
      call subr8(r8_1)
      call inir8(r8_2)
      call sub2r8(r8_2)
      if (r8_1 /= r8_2) then
        print *,"ng"
      endif
      call inir16(r16_1)
      call subr16(r16_1)
      call inir16(r16_2)
      call sub2r16(r16_2)
      if (r16_1 == r16_2) then
        print *,"ok"
      else
        print *,"ng"
      endif
      end program
