type ty
      integer :: aa(4,5)
end type

type, extends(ty):: ts
integer :: bb(4,5)
end type
class(*),pointer:: cptr(:,:)
integer,target::t(3,5) = reshape([1,2,3,4,5,6,7,8,9,1,2,3,4,5,6],[3,5])
cptr=>t
call sub1(cptr(:,:))
call sub1(cptr)
contains
subroutine sub1(bb)
class(*):: bb(3,5)
if(loc(cptr).ne.loc(bb))print*,101
if(any(lbound(bb) /= 1))print*,201
if(size(bb) /= 15)print*,204
if(rank(bb) /= 2)print*,206
if(.not.same_type_as(bb,cptr))print*,207
if(.not.extends_type_of(bb,cptr))print*,208
print*,"Pass"
end subroutine sub1
end
