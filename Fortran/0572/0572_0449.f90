

type ty
integer :: aa(4,5)
end type

type, extends(ty):: ts
integer :: bb(4,5)
end type

class(ty),pointer :: cptr(:,:)

allocate(ts::cptr(3,5))

call sub1(cptr(1:3,2:4))

contains 
subroutine sub1(bb)
class(*) :: bb(..)
if(any(lbound(bb) /= 1))print*,201
if(any(ubound(bb) /=3))print*,202
if(any(shape(bb) /=3))print*,203
if(size(bb) /= 9)print*,204
if(rank(bb) /= 2)print*,206
if(.not.same_type_as(bb,cptr))print*,207
if(.not.extends_type_of(bb,cptr))print*,208
print*,"Pass"
end subroutine sub1
end

