module mod01
implicit none
  integer,protected  :: iii
contains
  subroutine sub01()
    integer a(10)
    integer :: iolength
    a = 99

    return
   inquire ( iolength = iolength )(a(iii),iii=1,5)
   print *,iolength
  end subroutine
end module

use mod01

  call sub01()
  print *,'pass'
  stop
end
