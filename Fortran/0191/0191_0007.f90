module mod
contains
subroutine xxxx
integer :: arr(10),i(10)
arr=1
i= sub(arr+1)
end subroutine
elemental function   sub(i)
intent(in) :: i
sub=i
end function
end

use mod
integer :: xarr(10),xi(10)
xarr=1
xi= sub(xarr+1)
call xxxx()
print *,'pass'
end
