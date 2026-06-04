type ty
integer(kind=4) :: aa(4,4)
end type ty
type(ty) :: obj
obj%aa = 3
call sub(obj%aa(1,1))
contains 
subroutine sub(bb)
integer(kind=4) :: bb(..)
if(any(lbound(bb) /= 0))print*,201
if(any(ubound(bb) /=0))print*,202
if(any(shape(bb) /=0))print*,203
if(size(bb) /= product(shape(bb)))print*,204
if(loc(bb).ne.loc(obj%aa(1,1)))print*,"205"
print*,"PASS"
end subroutine sub
end
