module mod
contains
subroutine xxxx
integer :: arr(10),i
arr=1
i= sub(1)
end subroutine
elemental function   sub(i)
intent(in) :: i
sub=i
end function
end

use mod
call xxxx()
print *,'pass'
end
