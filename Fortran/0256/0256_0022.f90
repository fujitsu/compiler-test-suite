type ty
integer(kind=4) :: aa(4,4)
end type ty
type(ty) :: obj
obj%aa = 3
call sub(obj%aa(1,:), obj%aa(:,3))
if(obj%aa(1,1).ne.13)print*,"101",obj%aa(1,1)
contains
subroutine sub(bb ,dd)
integer(kind=4) :: bb(:)
integer(kind=4) :: dd(:)
if(any(lbound(bb) /= 1))print*,201
if(any(ubound(bb) /=4))print*,202
if(any(shape(bb) /=4))print*,203
if(size(bb) /= 4)print*,204
bb =bb + 10
dd =dd + 10
print*,"PASS"
end subroutine
end
