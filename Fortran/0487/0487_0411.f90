module m1
contains
subroutine sub(cc)
integer :: cc
call sub2(cc)
call sub3(cc)
end subroutine sub
subroutine sub2(bb)
integer :: bb(..)
write(1,*)lbound(bb),ubound(bb)
rewind 1
read(1,*,end=2) k1
print *,201
2 continue
end subroutine sub2
subroutine sub3(bb) bind(c)
integer :: bb(..)
write(2,*)lbound(bb),ubound(bb)
rewind 2
read(2,*,end=2) k1
print *,211
2 continue
end subroutine 
end
use m1
integer :: aa
call sub(aa)
print*,"pass"
end
