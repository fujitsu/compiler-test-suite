module m1
type ty
integer :: ii
contains
end type
type ty2
contains
end type
type(ty) :: obj
contains
subroutine sub()
obj%ii = 1
end subroutine
subroutine sub2()
if(obj%ii /= 1) print *,101
end subroutine
end

use m1
type ty3
integer :: t3
contains
end type
call sub()
call sub2()
print *,"Pass"
contains
end
