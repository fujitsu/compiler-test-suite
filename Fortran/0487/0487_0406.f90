integer :: aa(4)
call sub(aa,-2)
print*,"pass"
contains
subroutine sub(cc,k)
integer :: cc(2:3,k:*)
interface
subroutine sub3(bb) bind(c)
integer :: bb(..)
end subroutine 
end interface
call sub2(cc)
call sub3(cc)

end subroutine sub
subroutine sub2(bb)
integer :: bb(..)
write(1,*)lbound(bb),ubound(bb)
rewind 1
read(1,*) k1,k2,k3,k4
if (k1/=1) print *,201,k1
if (k2/=1) print *,202,k2
if (k3/=2) print *,203,k3
if (k4/=-1) print *,204,k4
end subroutine sub2
end
subroutine sub3(bb) bind(c)
integer :: bb(..)
end subroutine 
