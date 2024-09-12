call sub((/(I, I=1, 6,2)/))
contains 
subroutine sub(bb)
type(*) :: bb(:)
if(any(lbound(bb) /= 1))print*,201
if(any(ubound(bb) /=3))print*,202
if(any(shape(bb) /=3))print*,203
if(size(bb) /= 3)print*,204
if(is_contiguous(bb) .neqv. .TRUE.)print*,"205"
print*,"PASS"
end subroutine sub
end
