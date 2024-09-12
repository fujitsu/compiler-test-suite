module mod01
 interface
  function mifunc01() result(mirst01)
  end function
  function mifunc02() result(mirst02) bind(c)
  end function
 end interface
end module

module mod02
 use mod01
 procedure(mifunc01) :: pmifunc01
 procedure(mifunc02) :: pmifunc02
end module

module mod03
 use mod02
 procedure(mifunc01), pointer :: pmifuncp01
 procedure(mifunc02), pointer :: pmifuncp02
 contains
  subroutine m03sub01()
   use mod02
   integer :: i
   pmifuncp01 => pmifunc01
   pmifuncp02 => pmifunc02
   i = pmifunc01()
   i = pmifunc02()
   i = pmifuncp01()
   i = pmifuncp02()
  end subroutine
end module

use mod02
use mod03

call m03sub01()

pmifuncp01 => pmifunc01
pmifuncp02 => pmifunc02

print *,'pass'

end

function pmifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function

function pmifunc02() result(mirst02) bind(c)
 integer :: mirst02
 mirst02 = 2
end function
