module mod
contains
subroutine xxxx
integer :: arr(10),i(10)
arr=1
i= sub(arr+1)
i= ent(arr+1)
end subroutine
elemental function   sub(i)
intent(in) :: i
entry ent(i)
sub=i
end function
end

use mod
call xxxx()
print *,'pass'
end
