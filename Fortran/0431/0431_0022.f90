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
call= gena(t1)
if (call/=1) print *,901
call= gena(t1)
if (call/=1) print *,901
call= gena(t2)
if (call/=1) print *,901
call= gena(t2)
if (call/=1) print *,901
call= gena(p1)
if (call/=1) print *,901
call= gena(p1)
if (call/=1) print *,901
call= gena(p2)
if (call/=1) print *,901
call= gena(p2)
if (call/=1) print *,901
end subroutine
function a1(pp)
type(x1)::pp(:)
if (any(pp%x/=(/1,2/))) print *,201
a1=1
end function
function a2(pp)
type(x2)::pp(:)
if (any(pp%x/=(/'1','2'/))) print *,301
a2=1
end function
function b1(pp)
type(x1),pointer,intent(in)::pp(:)
if (any(pp%x/=(/1,2/))) print *,401
b1=1
end function
function b2(pp)
type(x2),pointer,intent(in)::pp(:)
if (any(pp%x/=(/'1','2'/))) print *,501
b2=1
end function
end
use m1
call s1
print *,'pass'
end
