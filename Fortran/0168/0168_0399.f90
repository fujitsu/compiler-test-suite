type ty
integer :: ii
end type
call sub(10)
print *,'pass'
contains
subroutine sub(dmy)
integer :: dmy

type(ty),allocatable :: obj1(:),obj2(:)

allocate(obj1(5))
obj1 % ii = 10
allocate(obj2(10))
obj2 % ii = 20

obj1 = obj2
if (size(obj1%ii)/=10) print *,101
if (any(obj1%ii/=20)) print *,102
end subroutine
end
