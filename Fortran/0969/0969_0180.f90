module mod01
 type m01_ty01
  integer :: i01
 end type
 contains
  function m01func01() result(m01rst01)
   type (m01_ty01) :: m01rst01
   m01rst01 = m01_ty01(1)
  end function
  function m01func02() result(m01rst02)
   type (m01_ty01), target  :: mt_ta01
   type (m01_ty01), pointer :: m01rst02
   m01rst02 => mt_ta01
   mt_ta01  = m01func01()
  end function
end module

use mod01

interface
 function ifunc01(if01_dfp01) result(irst01)
  use mod01
  procedure(m01func02), pointer, intent(in) :: if01_dfp01
  type (m01_ty01) :: irst01
 end function
 function ifunc02() result(irst02)
  use mod01
  type (m01_ty01), pointer :: irst02
 end function
 function ifunc03() result(irst03)
  use mod01
  type (m01_ty01), pointer :: irst03
 end function
end interface

type (m01_ty01) :: mt01, mt02

procedure (ifunc02), pointer :: pifunc02p01
procedure (ifunc03), pointer :: pifunc03p01

pifunc02p01 => ifunc02
pifunc03p01 => ifunc03

mt01 = ifunc01(pifunc02p01)
mt02 = ifunc01(pifunc03p01)

if (mt01%i01.ne.mt02%i01) print *,'not pass'

mt01 = ifunc01(ifunc02)
mt02 = ifunc01(ifunc03)

if (mt01%i01.ne.mt02%i01) print *,'not pass'


print *,'pass'

end

function ifunc01(if01_dfp01) result(irst01)
 use mod01
 procedure(m01func02), pointer, intent(in) :: if01_dfp01
 type (m01_ty01) :: irst01
 irst01 = m01_ty01(0)
 if (associated(if01_dfp01())) then
  if (same_type_as(if01_dfp01(), irst01)) irst01 = if01_dfp01()
 end if
end function

function ifunc02() result(irst02)
 use mod01
 type (m01_ty01), target  :: mt_ta01
 type (m01_ty01), pointer :: irst02
 irst02  => mt_ta01
 mt_ta01 =  m01func01()
end function

function ifunc03() result(irst03)
 use mod01
 type (m01_ty01), target  :: mt_ta01
 type (m01_ty01), pointer :: irst03
 irst03  => mt_ta01
 mt_ta01 =  m01_ty01(1)
end function
