character(len=2,kind=1)::ch(10)
ch ="a"
call sub(ch(1:10:2))
if(ch(1).ne."t")print*,"101"
if(ch(2).ne."a")print*,"102"
print*,"pass"
contains
subroutine sub(bb)
character(len=*,kind=1),contiguous :: bb(:)
if(any(lbound(bb) /= 1))print*,201
if(any(ubound(bb) /=5))print*,202, ubound(bb)
if(any(shape(bb) /=5))print*,203
if(size(bb) /= 5)print*,204
if(is_contiguous(bb).neqv..true.)print*,204
bb="t"
end subroutine sub
end
