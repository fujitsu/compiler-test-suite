module mod01
 interface
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
 end interface
 procedure(mifunc01) :: pmifunc01
 contains
  function m1func01() result(m1rst01)
   integer :: m1rst01
   m1rst01 = 1
  end function
end module

use mod01, pmif1 => pmifunc01

call csub01(pmif1)

print *,'pass'

contains
 subroutine csub01(pmf1)
  use mod01, mf1 => m1func01
  procedure(mf1) :: pmf1
  if (pmf1().ne.1) print *,'not pass'
 end subroutine
end

function pmifunc01() result(pmirst01)
 integer :: pmirst01
 pmirst01 = 1
end function
