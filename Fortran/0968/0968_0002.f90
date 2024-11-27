interface
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

type ty01
 sequence
 procedure(ifunc01), pointer, nopass :: pp
end type

type (ty01) :: st01

call sub01(st01)
call sub02(st01)
call sub03(st01)
call sub04(st01)

end

subroutine sub01(s01_arg01)
 interface
  function ifunc01() result(irst01)
   integer :: irst01
  end function
 end interface
 type ty01
  sequence
  procedure(ifunc01), pointer, nopass :: pp
 end type
 type (ty01) :: s01_arg01
end subroutine

subroutine sub02(s02_arg01)
 type ty01
  sequence
  procedure(integer), pointer, nopass :: pp
 end type
 type (ty01) :: s02_arg01
end subroutine

subroutine sub03(s03_arg01)
 interface
  function ifunc02() result(irst02)
   integer :: irst02
  end function
 end interface
 type ty01
  sequence
  procedure(ifunc02), pointer, nopass :: pp
 end type
 type (ty01) :: s03_arg01
end subroutine

subroutine sub04(s04_arg01)
 interface
  function ifunc03(if03_arg01) result(irst03)
   integer :: if03_arg01
   integer :: irst03
  end function
 end interface
 type ty01
  sequence
  procedure(ifunc03), pointer, nopass :: pp
 end type
 type (ty01) :: s04_arg01
end subroutine


function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function
