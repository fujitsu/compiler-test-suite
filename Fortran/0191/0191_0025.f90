module mod
contains
subroutine xxxx
integer :: arr(10),i(10),a(10)=(/1,2,3,4,5,6,7,8,9,10/)
arr=1
i= sub(-arr(1:10:1))
i= sub(+arr(1:10:1))
i= sub((arr(1:10:1)))
i= sub(1-arr(1:10:1))
i= sub(-arr(1:10:1)+1)
i= sub(int(arr(1:10:1)))
i(a)= sub(-arr(1:10:1))
i(a)= sub(+arr(1:10:1))
i(a)= sub((arr(1:10:1)))
i(a)= sub(1-arr(1:10:1))
i(a)= sub(-arr(1:10:1)+1)
i(a)= sub(int(arr(1:10:1)))
i10=10
i(1:i10)= sub(-arr(1:10:1))
i(1:i10)= sub(+arr(1:10:1))
i(1:i10)= sub((arr(1:10:1)))
i(1:i10)= sub(1-arr(1:10:1))
i(1:i10)= sub(-arr(1:10:1)+1)
i(1:i10)= sub(int(arr(1:10:1)))+sub_a(-arr(1:10:1)+1)
i(1:i10)= sub_a(-arr(1:10:1)+1)
end subroutine
impure elemental function   sub(i)
intent(in) :: i
jj=1
sub=i
end function
impure elemental function   sub_a(i)
intent(in) :: i
jj=1
sub_a=i
end function
end

use mod
call xxxx()
print *,'pass'
end
