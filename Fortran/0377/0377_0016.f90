interface
 function ifunc01() result(irst01)
  integer :: irst01
 end function
end interface

integer :: i
type ty01
 procedure(integer), pointer, nopass :: pprocp01
end type

type (ty01) :: tt01

tt01 = ty01(ifunc01)
i = tt01%pprocp01()

if (i.ne.1) print *,'error'

print *,'pass'

end

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function
