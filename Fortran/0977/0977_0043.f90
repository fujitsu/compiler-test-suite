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
t21(2)%x(1)=1
t21(2)%x(2)=2
v21(2)%x(1)=3
v21(2)%x(2)=4
if (v21(2)%x(1)/=3)write(6,*) "NG"
if (v21(2)%x(2)/=4)write(6,*) "NG"
end subroutine
subroutine s03
type(a),pointer::v21(:)
type(a),target::t21(2)
allocate(t21(2)%x(2))
v21=>t21
t21(2)%x(1)=1
t21(2)%x(2)=2
v21(2)%x(1)=3
v21(2)%x(2)=4
if (t21(2)%x(1)/=3)write(6,*) "NG"
if (t21(2)%x(2)/=4)write(6,*) "NG"
end subroutine
end
use m01
call s02
call s03
print *,'pass'
end
