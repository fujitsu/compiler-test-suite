interface
 function ifunc01(if01_arg01) result(irst01)
  integer :: if0_arg01
  integer :: irst01
 end function
end interface

call csub01(ifunc01)

print *,'pass'

contains
 subroutine csub01(cs01_dp01)
  procedure(ifunc01), pointer, intent(in) :: cs01_dp01
 end subroutine
end

function ifunc01(if01_arg01) result(irst01)
integer :: if0_arg01
 integer :: irst01
 irst01 = if01_arg01
end function
