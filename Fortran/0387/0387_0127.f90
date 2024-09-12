interface ifunc
 function ifunc() result(irst)
  integer :: irst
 end function
 function ifunc01(di01) result(irst01)
  integer :: di01
  integer :: irst01
 end function
end interface

interface isub
 subroutine isub(di01)
  integer :: di01
 end subroutine
 subroutine isub01()
 end subroutine
end interface

type ty01
 procedure(ifunc), pointer, nopass :: pifuncp
end type

type ty02
 procedure(isub),  pointer, nopass :: pisubp
end type

type (ty01) :: tt01
type (ty02) :: tt02

tt01%pifuncp => ifunc
tt02%pisubp  => isub

call tt02%pisubp(tt01%pifuncp())

print *,'pass'

end

function ifunc() result(irst)
 integer :: irst
 irst = 1
end function

function ifunc01(di01) result(irst01)
 integer :: di01
 integer :: irst01
 irst01 = di01
end function

subroutine isub(di01)
 integer :: di01
end subroutine

subroutine isub01()
end subroutine
