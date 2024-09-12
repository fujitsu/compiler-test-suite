module mod01
 interface
  subroutine misub01()
  end subroutine
  subroutine misub02() bind(c)
  end subroutine
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
  function mifunc02() result(mirst02) bind(c)
   integer :: mirst02
  end function
 end interface
 procedure(misub01),  pointer :: pmisubp01
 procedure(misub02),  pointer :: pmisubp02
 procedure(mifunc01), pointer :: pmifuncp01
 procedure(mifunc02), pointer :: pmifuncp02
 procedure(misub01)           :: pmisub01
 procedure(misub02)           :: pmisub02
 procedure(mifunc01)          :: pmifunc01
 procedure(mifunc02)          :: pmifunc02
 contains
  subroutine m1sub01()
   integer :: i
   pmisubp01  => pmisub01
   pmisubp02  => pmisub02
   pmifuncp01 => pmifunc01
   pmifuncp02 => pmifunc02

   call pmisubp01()
   call pmisubp02()
   call pmisub01()
   call pmisub02()

   i = pmifuncp01()
   i = pmifuncp02()
   i = pmifunc01()
   i = pmifunc02()

  end subroutine
end module

use mod01

integer :: i

call m1sub01()

pmisubp01  => pmisub01
pmisubp02  => pmisub02
pmifuncp01 => pmifunc01
pmifuncp02 => pmifunc02

call pmisubp01()
call pmisubp02()
call pmisub01()
call pmisub02()

i = pmifuncp01()
i = pmifuncp02()
i = pmifunc01()
i = pmifunc02()

print *,'pass'

end

subroutine pmisub01()
end subroutine

subroutine pmisub02() bind(c)
end subroutine

function pmifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function

function pmifunc02() result(mirst02) bind(c)
 integer :: mirst02
 mirst02 = 2
end function
