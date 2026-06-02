type ty
integer :: ii
end type
call sub()
print *,'pass'
contains
subroutine sub()

type(ty),allocatable :: obj1(:)
type(ty)             :: obj2(3)

obj2=[ty(2),ty(3),ty(4)]

obj1 = obj2         
if (size(obj1)/=3) print *,200,size(obj1)
if (obj1(1)%ii/=2) print *,201,obj1(1)%ii
if (obj1(2)%ii/=3) print *,202,obj1(2)%ii
if (obj1(3)%ii/=4) print *,203,obj1(3)%ii
end subroutine
end
