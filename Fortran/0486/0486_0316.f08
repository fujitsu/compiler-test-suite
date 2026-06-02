integer :: aa(4)
call sub(aa,zz)
print*,"pass"
contains 
subroutine sub(bb,ww)
integer :: bb(..)
type(*):: ww
if(any(lbound(bb) /= 1))print*,201
if(any(ubound(bb) /=4))print*,202
if(any(shape(bb) /=4))print*,203
if(size(bb) /= 4)print*,204
write(1,*) loc(bb)
write(1,*) loc(ww)
end subroutine sub
end
