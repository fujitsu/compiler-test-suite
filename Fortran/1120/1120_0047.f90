module mod01
 type mty01
  integer :: mty01_ii01 = 101
 end type
end module

use mod01

interface
 function ifunc01() result(irst01)
  interface
   function if01_if01(if01_if01_arg01) result(if01_irst01)
    procedure(integer)          :: if01_if01_arg01
    procedure(integer), pointer :: if01_irst01
   end function
  end interface
  procedure(if01_if01), pointer :: irst01
 end function
 function ifunc02() result(irst02)
  interface
   function if02_if01(if02_if01_arg01) result(if02_irst01)
    use mod01
    procedure(type(mty01))          :: if02_if01_arg01
    procedure(type(mty01)), pointer :: if02_irst01
   end function
  end interface
  procedure(if02_if01), pointer :: irst02
 end function
 function ifunc03() result(irst03)
  use mod01
  type(mty01) :: irst03
 end function
 function if01_if01(if01_if01_arg01) result(if01_irst01)
  procedure(integer)          :: if01_if01_arg01
  procedure(integer), pointer :: if01_irst01
 end function
 function if02_if01(if02_if01_arg01) result(if02_irst01)
  use mod01
  procedure(type(mty01))          :: if02_if01_arg01
  procedure(type(mty01)), pointer :: if02_irst01
 end function
end interface

intrinsic                       :: iabs

type ty01
 procedure(cfunc01),     pointer, nopass :: pcfunc01p01
end type
type ty02
 procedure(cfunc02),     pointer, nopass :: pcfunc02p01
end type
type ty03
 procedure(if01_if01),   pointer, nopass :: pif01_if01p01
end type
type ty04
 procedure(if02_if01),   pointer, nopass :: pif02_if01p01
end type
type ty05
 procedure(integer),     pointer, nopass :: pifuncp01
end type
type ty06
 procedure(type(mty01)), pointer, nopass :: pmty01funcp01
end type

type (ty01) :: tt01
type (ty02) :: tt02
type (ty03) :: tt03
type (ty04) :: tt04
type (ty05) :: tt05
type (ty06) :: tt06

tt01 = ty01(ifunc01)
tt02 = ty02(ifunc02)

tt03 = ty03(tt01%pcfunc01p01())
tt04 = ty04(tt02%pcfunc02p01())

tt05 = ty05(tt03%pif01_if01p01(iabs))
tt06 = ty06(tt04%pif02_if01p01(ifunc03))

if (tt05%pifuncp01(1).ne.1) print *,'not pass'

print *,'pass'

contains

 function cfunc01() result(crst01)
  interface
   function cf01_if01(cf01_if01_arg01) result(cf01_irst01)
    integer, external          :: cf01_if01_arg01
    integer, external, pointer :: cf01_irst01
   end function
  end interface
  procedure(cf01_if01), pointer :: crst01
  crst01 => cf01_if01
 end function

 function cfunc02() result(crst02)
  interface
   function cf02_if01(cf02_if01_arg01) result(cf02_irst01)
    use mod01
    type(mty01), external          :: cf02_if01_arg01
    type(mty01), external, pointer :: cf02_irst01
   end function
  end interface
  procedure(cf02_if01), pointer :: crst02
  crst02 => cf02_if01
 end function

end

function ifunc01() result(irst01)
 interface
  function if01_if01(if01_if01_arg01) result(if01_irst01)
   procedure(integer)          :: if01_if01_arg01
   procedure(integer), pointer :: if01_irst01
  end function
 end interface
 procedure(if01_if01), pointer :: irst01
 irst01 => if01_if01
end function

function ifunc02() result(irst02)
 interface
  function if02_if01(if02_if01_arg01) result(if02_irst01)
   use mod01
   procedure(type(mty01))          :: if02_if01_arg01
   procedure(type(mty01)), pointer :: if02_irst01
  end function
 end interface
 procedure(if02_if01), pointer :: irst02
 irst02 => if02_if01
end function

function ifunc03() result(irst03)
 use mod01
 type(mty01) :: irst03
 irst03 = mty01()
end function

function if01_if01(if01_if01_arg01) result(if01_irst01)
 procedure(integer)          :: if01_if01_arg01
 procedure(integer), pointer :: if01_irst01
 if01_irst01 => if01_if01_arg01
end function

function cf01_if01(cf01_if01_arg01) result(cf01_irst01)
 integer, external          :: cf01_if01_arg01
 integer, external, pointer :: cf01_irst01
 cf01_irst01 => cf01_if01_arg01
end function

function if02_if01(if02_if01_arg01) result(if02_irst01)
 use mod01
 procedure(type(mty01))          :: if02_if01_arg01
 procedure(type(mty01)), pointer :: if02_irst01
 if02_irst01 => if02_if01_arg01
end function

function cf02_if01(cf02_if01_arg01) result(cf02_irst01)
 use mod01
 type(mty01), external          :: cf02_if01_arg01
 type(mty01), external, pointer :: cf02_irst01
 cf02_irst01 => cf02_if01_arg01
end function
