interface
 function ifunc01(if01_arg01) result(irst01)
  logical :: if01_arg01
  integer :: irst01
 end function
end interface

type ty01
 sequence
 procedure(ifunc01), pointer, nopass :: p
end type

type ty02
 sequence
 procedure(ifunc01), pointer, nopass :: p2
end type

type (ty01) :: t01
type (ty02) :: t02

call sub01(t01)
call sub02(t02)

end

subroutine sub01(s01_arg01)
 interface
  function ifunc01(if01_arg01) result(irst01)
   integer :: if01_arg01
   integer :: irst01
  end function
 end interface
 type ty01
  sequence
  procedure(ifunc01), pointer, nopass :: p
 end type
 type (ty01) :: s01_arg01
end subroutine

subroutine sub02(s02_arg01)
 type ty02
  sequence
  procedure(integer), pointer, nopass :: p2
 end type
 type (ty02) :: s02_arg01
end subroutine
