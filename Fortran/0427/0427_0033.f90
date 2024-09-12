module mod01
 type :: mty01
  integer :: mt01_ii04_01 = 1401
 end type
 type, extends(mty01) :: mty02
 end type
end module

module mod02
 use mod01
 interface
  function mifunc01() result(mirst01)
   use mod01
   type (mty01) :: mirst01
  end function
  function mifunc02() result(mirst02)
   use mod01
   type (mty02) :: mirst02
  end function
 end interface
 procedure(mifunc01) :: pmifunc01
 procedure(mifunc02) :: pmifunc02
 contains
  function m2func01(m2f1arg01) result(m2rst01)
   type(mty01), external          :: m2f1arg01
   type(mty01), external, pointer :: m2rst01
   m2rst01 => m2f1arg01
  end function
  function m2func02(m2f1arg02) result(m2rst02)
   type(mty02), external          :: m2f1arg02
   type(mty02), external, pointer :: m2rst02
   m2rst02 => m2f1arg02
  end function
end module

module modxx
use mod01
use mod02

interface func
 module procedure m2func01, m2func02
end interface

procedure(type(mty01)), pointer :: pstruct_func01
procedure(type(mty02)), pointer :: pstruct_func02
end 

use modxx

pstruct_func01 => func(pmifunc01)
pstruct_func02 => func(pmifunc02)

print *,'pass'

end

function mifunc01() result(mirst01)
 use mod01
 type (mty01) :: mirst01
 mirst01 = mty01()
end function

function mifunc02() result(mirst02)
 use mod01
 type (mty02) :: mirst02
 mirst02 = mty02()
end function

function pmifunc01() result(pmirst01)
 use mod01
 type (mty01) :: pmirst01
 pmirst01 = mty01()
end function

function pmifunc02() result(pmirst02)
 use mod01
 type (mty02) :: pmirst02
 pmirst02 = mty02()
end function
