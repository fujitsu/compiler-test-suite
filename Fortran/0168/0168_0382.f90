type ty
integer :: ii
end type
call sub()
print *,'pass'
contains
subroutine sub()

type(ty),allocatable :: obj1(:)
type(ty)             :: y1,y2  

y1=ty(2)
y2=ty(3)

allocate(obj1(5))
obj1 % ii = 10

if (size( [y1,y2] )/=2) print *,101
obj1 = [y1,y2 ]
if (size(obj1)/=2) print *,200,size(obj1)
if (obj1(1)%ii/=2) print *,201,obj1(1)%ii
if (obj1(2)%ii/=3) print *,202,obj1(2)%ii
end subroutine
end
