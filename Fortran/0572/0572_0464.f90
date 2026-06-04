     type ty
        character(len=4)::ch
        integer :: arr(300)
     end type
type(ty) :: obj(10)

call sub(obj(1)%arr(2:10),obj)
contains 
subroutine sub(bb,cc)
integer :: bb(..)
class(*):: cc(..)
if(any(lbound(bb) /= 1))print*,201
if(any(ubound(bb) /=9))print*,202
if(any(shape(bb) /=9))print*,203
if(size(bb) /= 9)print*,204
if(rank(bb).ne.1)print*,"1001"
if(any(lbound(cc) /= 1))print*,201
if(any(ubound(cc) /=10))print*,202
if(any(shape(cc) /=10))print*,203
if(size(cc) /= 10)print*,20433
if(rank(cc).ne.1)print*,"1001"
print*,"pass"
end subroutine sub
end
