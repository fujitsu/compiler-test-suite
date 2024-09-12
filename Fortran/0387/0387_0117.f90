module mod01
 type                :: ty01
  integer :: ii01 = 1
 end type
 type, extends(ty01) :: ty02
  integer :: ii02 = 2
 end type
 contains
  subroutine m1sub01(m1arg01)
   procedure(type(ty02))          :: m1arg01
  end subroutine
  subroutine m1sub02(m1arg01)
   type(ty02), external           :: m1arg01
  end subroutine
  subroutine m1sub03(m1arg01)
   procedure(type(ty02)), pointer :: m1arg01
   if (associated(m1arg01).neqv..true.) print *,'no associated'
  end subroutine
  subroutine m1sub04(m1arg01)
   type(ty02), external,  pointer :: m1arg01
   if (associated(m1arg01).neqv..true.) print *,'no associated'
  end subroutine
  subroutine m1sub05(m1arg01)
   type(ty02)                     :: m1arg01
  end subroutine
end module

use mod01, ty0A => ty01
use mod01, ty0B => ty02

procedure(type(ty0B))          :: pproc01
type(ty0B), external           :: eproc01

procedure(type(ty0B)), pointer :: pprocp01
type(ty0B), external , pointer :: eprocp01

pprocp01 => pproc01
eprocp01 => eproc01

call m1sub01(pproc01)
call m1sub01(eproc01)
call m1sub01(pprocp01)
call m1sub01(eprocp01)

call m1sub02(pproc01)
call m1sub02(eproc01)
call m1sub02(pprocp01)
call m1sub02(eprocp01)

call m1sub03(pprocp01)
call m1sub03(eprocp01)

call m1sub04(pprocp01)
call m1sub04(eprocp01)

call m1sub05(pproc01())
call m1sub05(eproc01())
call m1sub05(pprocp01())
call m1sub05(eprocp01())

print *,'pass'

end

function pproc01()
 use mod01
 type (ty02) :: pproc01
 pproc01 = ty02()
end function

function eproc01()
 use mod01
 type (ty02) :: eproc01
 eproc01 = ty02()
end function
