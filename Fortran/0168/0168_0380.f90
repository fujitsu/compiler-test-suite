type ty
integer :: ii
end type
call sub()
print *,'pass'
contains
subroutine sub()

type(ty),allocatable :: obj1(:)

allocate(obj1(5))
obj1 % ii = 10

call foo( [ty(2),ty(3)] )
if (size( [ty(2),ty(3)] )/=2) print *,101
obj1 = [ty(2),ty(3)]
if (size(obj1)/=2) print *,200,size(obj1)
if (obj1(1)%ii/=2) print *,201,obj1(1)%ii
if (obj1(2)%ii/=3) print *,202,obj1(2)%ii
end subroutine
subroutine foo(x)
type(ty) :: x(:)
if (size(x)/=2) print *,300,size(x)
if (x(1)%ii/=2) print *,301,x%ii
if (x(2)%ii/=3) print *,302,x%ii
end subroutine
end
