module mod01
 interface
  function mifunc01(miarg01) result(mirst01)
   integer :: miarg01
   integer :: mirst01
  end function
 end interface
 procedure(mifunc01) :: pfunc01
 contains
  subroutine m1sub01(m1arg01)
   integer :: m1arg01
   if (m1arg01.ne.2) print *, 'm1arg01 = ', m1arg01
  end subroutine
  function m1func01(m1arg01) result(m1rst01)
   procedure(integer) :: m1arg01
   integer :: m1rst01
   m1rst01 = m1arg01(2)
  end function
end module

use mod01

procedure(csub01), pointer :: psubp01

psubp01 => m1sub01
call psubp01(m1func01(pfunc01))

print *,'pass'

contains
 subroutine csub01(carg01)
  integer :: carg01
  if (carg01.ne.1) print *,'not pass'
 end subroutine
end

function pfunc01(miarg01) result(mirst01)
 integer :: miarg01
 integer :: mirst01
 mirst01 = miarg01
end function

