type ty
integer :: ii
end type
call sub()
print *,'pass'
contains
subroutine sub()

type(ty),allocatable :: obj1

obj1 = ty(2)
if (obj1%ii/=2) print *,201,obj1%ii
end subroutine
end
