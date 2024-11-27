module m01
type a1
 integer,allocatable::x(:)
end type
type a2
 integer,pointer::x(:)
end type
contains
subroutine s02
type(a1),pointer::v21(:)
type(a2),pointer::v22(:)
allocate(v21(2))
allocate(v21(2)%x(2))
allocate(v22(2))
allocate(v22(2)%x(2))
v21(2)%x(1)=1
v21(2)%x(2)=2
v22(2)%x(1)=3
v22(2)%x(2)=4
if (v21(2)%x(1)/=1)write(6,*) "NG"
if (v21(2)%x(2)/=2)write(6,*) "NG"
if (v22(2)%x(1)/=3)write(6,*) "NG"
if (v22(2)%x(2)/=4)write(6,*) "NG"
end subroutine
end
use m01
call s02
print *,'pass'
end
