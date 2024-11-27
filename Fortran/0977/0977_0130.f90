module m01
type a
 integer,allocatable::x(:)
end type
contains
subroutine s01()
type(a)::v11(2),v12(2)
allocate(v11(2)%x(2))
v11(2)%x(2)=11
v12=v11
if (v11(2)%x(2)/=11)write(6,*) "NG"
if (v12(2)%x(2)/=11)write(6,*) "NG"
v12(2)%x(2)=13
if (v12(2)%x(2)/=13)write(6,*) "NG"
end subroutine
end
use m01
call s01
print *,'pass'
end
