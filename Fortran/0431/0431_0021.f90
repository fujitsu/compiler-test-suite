module m1
type x1
  integer::x
end type
type x2
  character::x
end type
type(x1),pointer:: p1(:)
type(x1),target :: t1(2)
type(x2),pointer:: p2(:)
type(x2),target :: t2(2)
interface gena
 module procedure b1,b2
end interface
contains
subroutine s1
allocate (p1(2),p2(2))
t1%x=(/1,2/)
t2%x=(/'1','2'/)
p1%x=(/1,2/)
p2%x=(/'1','2'/)
call gena(t1)
call gena(t1)
call gena(t2)
call gena(t2)
call gena(p1)
call gena(p1)
call gena(p2)
call gena(p2)
end subroutine
subroutine a1(pp)
type(x1)::pp(:)
if (any(pp%x/=(/1,2/))) print *,201
end subroutine
subroutine a2(pp)
type(x2)::pp(:)
if (any(pp%x/=(/'1','2'/))) print *,301
end subroutine
subroutine b1(pp)
type(x1),pointer,intent(in)::pp(:)
if (any(pp%x/=(/1,2/))) print *,401
end subroutine
subroutine b2(pp)
type(x2),pointer,intent(in)::pp(:)
if (any(pp%x/=(/'1','2'/))) print *,501
end subroutine
end
use m1
call s1
print *,'pass'
end
