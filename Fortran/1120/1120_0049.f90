module mod01
 contains
  function m01_func01() result(m01_rst01)
   procedure(m01_func02) , pointer :: m01_rst01
   m01_rst01 => m01_func02
  end function

  function m01_func02() result(m01_rst02)
   procedure(m01_func03) , pointer :: m01_rst02
   m01_rst02 => m01_func03
  end function

  function m01_func03() result(m01_rst03)
   integer :: m01_rst03
   m01_rst03 = 1
  end function

end module

use mod01

procedure(cfunc02) :: pcfunc02
procedure(cfunc03) :: pcfunc03

type ty01
 procedure(cfunc02),    pointer, nopass :: pcfunc02p01
end type

type ty02
 procedure(m01_func02), pointer, nopass :: pm01_func02p01
end type

type ty03
 procedure(cfunc03),    pointer, nopass :: pcfunc03p01
end type

type ty04
 procedure(m01_func03), pointer, nopass :: pm01_func03p01
end type

type (ty01) :: tt01
type (ty02) :: tt02
type (ty03) :: tt03
type (ty04) :: tt04

tt01 = ty01(m01_func01())
tt02 = ty02(cfunc01())
tt03 = ty03(tt01%pcfunc02p01())
tt04 = ty04(tt02%pm01_func02p01())

if (tt03%pcfunc03p01().ne.tt04%pm01_func03p01()) print *,'not pass'

print *,'pass'

contains

 function cfunc01() result(crst01)
  procedure(cfunc02), pointer :: crst01
  crst01 => pcfunc02
 end function

 function cfunc02() result(crst02)
  procedure(cfunc03), pointer :: crst02
  crst02 => pcfunc03
 end function

 function cfunc03() result(crst03)
  integer :: crst03
  crst03 = 2
 end function

end

function pcfunc02() result(pcrst02)
 use mod01
 procedure(m01_func03), pointer :: pcrst02
 pcrst02 => m01_func03
end function

function pcfunc03() result(pcrst03)
 integer :: pcrst03
 pcrst03 = 3
end function
