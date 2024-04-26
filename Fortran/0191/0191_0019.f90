module mod
contains
subroutine xxxx
integer :: arr(10),i(10)
arr=1
i= sub(arr+1)
call iii()
contains
impure elemental function   sub(i)
intent(in) :: i
sub=i
jjj=ifun()
end function
subroutine iii
integer :: arr(10),i(10)
arr=1
i= sub(arr+1)
end subroutine
end subroutine
end

use mod
call xxxx()
print *,'pass'
end
function ifun()
ifun=1
end
