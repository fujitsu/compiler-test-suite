integer::x(5:4)
print*,"pass"
call sub1(x)
contains
subroutine sub1(bb)
integer,contiguous :: bb(:)
if(any(lbound(bb) /= 1))print*,201
if(any(ubound(bb) /=0))print*,202
if(any(shape(bb) /=0))print*,203
if(size(bb) /= 0)print*,204
if(is_contiguous(bb).neqv..true.)print*,204
end subroutine sub1
end
