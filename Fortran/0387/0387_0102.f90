module mod01
 interface
  function mifunc01() result(mirst01)
   integer :: mirst01
  end function
  function mifunc02() result(mirst02)
   character :: mirst02
  end function
 end interface
end module

module mod02
 contains
  function m1func01(dpproc01) result(mrst01)
   use mod01
   procedure(mifunc01)          :: dpproc01
   procedure(mifunc01), pointer :: mrst01
   entry ent(dpproc01) result(mrst01)
   mrst01 => dpproc01
  end function
  function m1func02(dpproc02) result(mrst02)
   use mod01
   procedure(mifunc02),pointer :: dpproc02
   procedure(mifunc02),pointer :: mrst02
   mrst02 => dpproc02
  end function
end module

use mod01
use mod02

interface m1func
 module procedure ent,m1func02
end interface

procedure(mifunc01), pointer :: pprocp01
procedure(mifunc02), pointer :: pprocp02

pprocp01 => m1func(mifunc01)

pprocp02 => mifunc02

print *,'pass'

end

function mifunc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function

function mifunc02() result(mirst02)
 character :: mirst02
 mirst02 = '2'
end function

function dpproc01() result(mirst01)
 integer :: mirst01
 mirst01 = 1
end function

function dpproc02() result(mirst02)
 character :: mirst02
 mirst02 = '2'
end function
