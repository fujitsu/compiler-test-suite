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
j= jfun()
end function
pure function jfun  ()
jfun=1
end
end

use mod
call xxxx()
print *,'pass'
end
