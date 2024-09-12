module m1
type x1
  integer::x
end type
type x2
  character::x
end type
type(x1),pointer:: t1(:)
type(x2),pointer:: t2(:)
interface gen
 procedure a1,a2
end interface
contains
subroutine s1
allocate (t1(2),t2(2))
t1%x=[1,2]
t2%x=['1','2']
call gen(t1)
end subroutine
subroutine a1(pp)
type(x1),pointer,intent(in)::pp(:)
if (any(pp%x/=[1,2])) print *,201
end subroutine
subroutine a2(pp)
type(x2),pointer,intent(in)::pp(:)
if (any(pp%x/=['1','2'])) print *,301
end subroutine
end
use m1
call s1
print *,'pass'
end
