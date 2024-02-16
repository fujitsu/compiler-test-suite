      subroutine sub1(a)
      real a,d1,d2
      d1 = a**0.5_4
      d2 = a**1.5_4
      a = d1 + d2
      end subroutine

      subroutine sub2(a)
      real a,d1,d2
      d1 = a**0.5_8
      d2 = a**1.5_8
      a = d1 + d2
      end subroutine

      subroutine sub3(a)
      real a,d1,d2
      d1 = a**0.5_16
      d2 = a**1.5_16
      a = d1 + d2
      end subroutine

      subroutine ini(a)
      real a
      a = 1.1
      end subroutine

      program main
      real a1,a2,a3,error/0.0000005/
      call ini(a1)
      call sub1(a1)
      call ini(a2)
      call sub2(a2)
      call ini(a3)
      call sub3(a3)
      if (abs(a1-a2)<=error .and. abs(a2-a3)<=error) then
        print *,"ok"
      else
        print *,"ng"
      endif
      end program
