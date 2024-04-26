module mod
type ty1
 integer :: jj
 integer,pointer :: ip
 type(ty1),pointer :: jp(:)
end type
contains
subroutine xxxx
type(ty1) :: arr(10),i(10)
arr%jj=(/1,2,3,4,5,6,7,8,9,10/)
do j=1,10
allocate(arr(j)%ip)
arr(j)%ip=1
end do
i= sub(arr)
do j=1,10
end do
end subroutine
impure elemental type(ty1) function   sub(i)
intent(in) :: i
type (ty1) :: i
target :: iii
integer :: iii
sub%jj=i%jj
iii=i%jj
sub%ip=>iii
end function
end

use mod
call xxxx()
print *,'pass'
end
