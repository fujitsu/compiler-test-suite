module mod01
 type ty01
  character(4) :: tc01
 end type
end module

module mod02
 interface
  function mifunc01() result(mirst01)
   use mod01
   type (ty01) :: mirst01
  end function
 end interface
 procedure(mifunc01) :: pmifunc01
end module

use mod02

print *,pmifunc01()
end

function pmifunc01() result(mirst01)
 use mod01
 type (ty01) :: mirst01
 mirst01 = ty01('pass')
end function
