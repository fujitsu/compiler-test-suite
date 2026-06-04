integer :: aa(4)
call sub(aa)
print*,"pass"
contains
subroutine sub(bb)
integer :: bb(*)
if(any(lbound(bb) /= 1))print*,201
call sub2(bb)
end subroutine sub
subroutine sub2(bb)
integer :: bb(..)
write(1,*)lbound(bb),ubound(bb),shape(bb),size(bb)
rewind 1
read(1,*) k1,k2,k3,k4
if (k1/=1) print *,201
if (k2/=-1) print *,202
if (k3/=-1) print *,203
if (k4/=-1) print *,204
end subroutine sub2
end
