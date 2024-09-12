module mod01
 interface
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
  function mifunc02() result(mirst02)
   real    :: mirst02
  end function
 end interface
 procedure(mifunc01) :: pmifunc01
 procedure(mifunc02) :: pmifunc02
 contains
  function m1func01(m1f1arg01) result(m1rst01)
   integer, external           :: m1f1arg01
   procedure(integer), pointer :: m1rst01
   m1rst01 => m1f1arg01
  end function
  function m1func02(m1f2arg01) result(m1rst02)
   real, external              :: m1f2arg01
   procedure(real),    pointer :: m1rst02
   m1rst02 => m1f2arg01
  end function
end module

use mod01

interface xfunc
 module procedure m1func01, m1func02
end interface

procedure(integer), pointer :: pprocp01
procedure(real),    pointer :: pprocp02

pprocp01 => xfunc(pmifunc01)
pprocp02 => xfunc(pmifunc02)

if (pprocp01().ne.3  ) print *,'pprocp01 error'
if (pprocp02().ne.4.0) print *,'pprocp02 error'

print *,'pass'

end

function mifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function

function mifunc02() result(mirst02)
 real    :: mirst02
 mirst02 = 2.0
end function

function pmifunc01() result(pmirst01)
 integer :: pmirst01
 pmirst01 = 3
end function

function pmifunc02() result(pmirst02)
 real    :: pmirst02
 pmirst02 = 4.0
end function
