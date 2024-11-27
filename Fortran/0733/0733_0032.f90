module twice_mod
implicit none
public :: twice
contains
function twice(x) result(value)
real , intent(in) :: x
real              :: value
value = 2*x
return
end function twice
end module twice_mod

program main
use twice_mod
implicit none
real :: x
x = 2.0
x = twice(x)
if (abs(x-4)>0.0001)print *,'error-1'
print *,'pass'
end program main
