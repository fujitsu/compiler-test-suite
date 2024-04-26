module mod
integer :: jj=1
contains
subroutine aaa()
call xxxx()
print *,'pass'
contains
subroutine xxxx
integer :: arr(10),i(10)
arr=1
i= sub(arr+1)
end subroutine
impure elemental function   sub(i)
intent(in) :: i
jj=1
sub=i
end function
end
end
use mod
call aaa()
end
