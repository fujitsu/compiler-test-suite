module mod
intrinsic sin
external :: ext
end
integer :: i(10),arr(10)
arr=1
i= sub(arr)
print *,'pass'
contains
impure elemental function   sub(i)
use mod
intent(in) :: i
sub=i
end function
end

