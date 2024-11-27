module m01
type a1
 integer,allocatable::x(:)
end type
type a2
 integer,pointer::x(:)
end type
type(a1),pointer::v21(:)
type(a2),pointer::v22(:)
contains
subroutine s02
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
call sz
contains
subroutine sz
v21(2)%x(1)=11
v21(2)%x(2)=12
v22(2)%x(1)=13
v22(2)%x(2)=14
if (v21(2)%x(1)/=11)write(6,*) "NG"
if (v21(2)%x(2)/=12)write(6,*) "NG"
if (v22(2)%x(1)/=13)write(6,*) "NG"
if (v22(2)%x(2)/=14)write(6,*) "NG"
end subroutine
end subroutine
end
use m01
call s02
print *,'pass'
end
