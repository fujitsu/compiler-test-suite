module mod
common /com/jj
data jj/1/
private :: jj,sub
contains
subroutine xxxx
integer :: arr(10),i(10)
arr=1
i= sub(arr+1)
end subroutine
impure elemental function   sub(i)
intent(in) :: i
sub=i
if (jj.ne.1) sub=1
end function
end

use mod
call xxxx()
print *,'pass'
end
