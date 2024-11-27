module m01
type a
 integer,allocatable::x(:)
end type
contains
subroutine s02
type(a),pointer::v21(:)
type(a),target::t21(2)
allocate(t21(2)%x(2))
v21=>t21
v21(2)%x(1)=3
v21(2)%x(2)=4
t21(2)%x(1)=1
t21(2)%x(2)=2
if (v21(2)%x(1)/=1)write(6,*) "NG"
if (v21(2)%x(2)/=2)write(6,*) "NG"
end subroutine
end
use m01
call s02
print *,'pass'
end
