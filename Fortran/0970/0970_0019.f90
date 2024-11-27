interface
 function ifunc01() result(irst01)
  type ty01
   sequence
   procedure(iabs), pointer, nopass :: pr_pn01
  end type
  type (ty01) :: irst01
 end function
end interface

type ty01
 sequence
 procedure(iabs), pointer, nopass :: pr_pn01
end type

type ty02
 sequence
 procedure(cfunc01), pointer, nopass :: pr_pn02
end type

type ty03
 sequence
 procedure(real), pointer, nopass :: pr_pn03
end type

type ty04
 sequence
 procedure(type(ty01)), pointer, nopass :: pr_pn04
end type

type (ty01) :: t01
type (ty02) :: t02
type (ty03) :: t03
type (ty04) :: t04

t01 = ifunc01()

call sub01(t01)

call sub02(t02)

call sub03(t01)

call sub04(t03)

call sub05(t03)

call sub06(t04)

print *,'pass'

contains

 function cfunc01() result(crst01)
  integer :: crst01
  crst01 = 1
 end function
end

function ifunc01() result(irst01)
 type ty01
  sequence
  procedure(integer), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: irst01
 irst01 = ty01(null())
end function

subroutine sub01(s01_arg01)
 type ty01
  sequence
  procedure(integer), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: s01_arg01
end subroutine

subroutine sub02(s02_arg01)
 type ty02
  sequence
  procedure(cfunc01), pointer, nopass :: pr_pn02
 end type
 type (ty02) :: s02_arg01
 contains
  function cfunc01() result(crst01)
   integer :: crst01
   crst01 = 1
  end function
end subroutine

subroutine sub03(s03_arg01)
 type ty01
  sequence
  procedure(idim), pointer, nopass :: pr_pn01
 end type
 type (ty01) :: s03_arg01
end subroutine

subroutine sub04(s04_arg01)
 type ty03
  sequence
  procedure(), pointer, nopass :: pr_pn03
 end type
 type (ty03) :: s04_arg01
end subroutine

subroutine sub05(s05_arg01)
 type ty03
  sequence
  real, pointer :: pr_pn03
 end type
 type (ty03) :: s05_arg01
end subroutine

subroutine sub06(s06_arg01)
 type ty01
  sequence
  procedure(idim), pointer, nopass :: pr_pn01
 end type
 type ty04
  sequence
  procedure(type(ty01)), pointer, nopass :: pr_pn04
 end type
 type (ty04) :: s06_arg01
end subroutine
