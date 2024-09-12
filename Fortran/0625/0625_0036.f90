module mod01
 interface
  subroutine misub01(miarg01)
   integer :: miarg01
  end subroutine
 end interface
 procedure(misub01) :: pmisub01
 contains
  subroutine m1sub01(m1arg01)
   integer :: m1arg01
   if (m1arg01.eq.0) print *,'m1arg01 error'
  end subroutine
end module

use mod01, msub  => m1sub01
use mod01, pmsub => pmisub01

procedure(msub), pointer :: pprocp01
call csub01(pprocp01)

call pprocp01(1)

print *,'pass'

contains
 subroutine csub01(carg01)
  procedure(), pointer :: carg01
  carg01 => pmsub
 end subroutine
end

subroutine pmisub01(pmiarg01)
 integer :: pmiarg01
 if (pmiarg01.eq.0) print *,'pmiarg01 error'
end subroutine
