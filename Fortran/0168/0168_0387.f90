type ty
integer :: ii
end type
call sub()
print *,'pass'
contains
subroutine sub()

type(ty),allocatable :: obj1
type(ty)             :: obj2

obj2=ty(2)

obj1 = f(obj2)         
if (obj1%ii/=2) print *,201,obj1%ii
end subroutine
function f(x)
type(ty) :: x
type(ty) :: f
f=x
end function
end
