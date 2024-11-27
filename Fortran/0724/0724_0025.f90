module mod01
 interface
  function mifunc01(dproc) result(mirst01)
   procedure(integer) :: dproc
   integer            :: mirst01
  end function
 end interface
 procedure(mifunc01) :: pmifunc01
 contains
  function m1func01(dproc) result(m1rst01)
   procedure(integer) :: dproc
   integer :: m1rst01
   m1rst01 = 1
  end function
end module

module mod02
 use mod01
 procedure(m1func01) :: pm1func01
end module

module mod03
 interface
  function mifunc03(dprocp) result(mirst03)
   procedure(integer), pointer :: dprocp
   integer :: mirst03
  end function
 end interface
 procedure(mifunc03) :: pmifunc03
 procedure(m3func01) :: pm3func01
 contains
  function m3func01(dprocp) result(m3rst01)
   procedure(integer), pointer :: dprocp
   integer :: m3rst01
  end function
end module

use mod01
use mod02
use mod03

interface
 function func01() result(irst01)
  integer :: irst01
 end function
end interface

procedure(integer), pointer :: pprocp01

pprocp01 => func01

print *,pmifunc01(pprocp01)
print *,pm1func01(pprocp01)

print *,pmifunc01(dproc = pprocp01)
print *,pm1func01(dproc = pprocp01)

print *,pmifunc03(pprocp01)
print *,pm3func01(pprocp01)

print *,pmifunc03(null())
print *,pm3func01(null())

end

function func01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

function mifunc01(dproc) result(mirst01)
 procedure(integer) :: dproc
 integer            :: mirst01
 mirst01 = 1
end function

function pmifunc01(dproc) result(mirst01)
 procedure(integer) :: dproc
 integer            :: mirst01
 mirst01 = 1
end function

function pm1func01(dproc) result(mirst01)
 procedure(integer) :: dproc
 integer            :: mirst01
 mirst01 = 1
end function

function mifunc03(dprocp) result(mirst03)
 procedure(integer), pointer :: dprocp
 integer :: mirst03
 mirst03 = 3
end function

function pmifunc03(dprocp) result(mirst03)
 procedure(integer), pointer :: dprocp
 integer :: mirst03
 mirst03 = 3
end function

function pm3func01(dprocp) result(mirst03)
 procedure(integer), pointer :: dprocp
 integer :: mirst03
 mirst03 = 3
end function
