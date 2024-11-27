module m01
type a
 integer,allocatable::x(:)
 integer,pointer::y(:)
end type
contains
subroutine s01()
type(a)::v11(2),v12(2)
allocate(v11(2)%x(2))
allocate(v11(2)%y(2))
v11(2)%x(2)=11
v11(2)%y(2)=11
v12=v11
v12(2)%y=>v11(2)%y
if (v11(2)%x(2)/=11)write(6,*) "NG"
if (v12(2)%x(2)/=11)write(6,*) "NG"
if (v11(2)%y(2)/=11)write(6,*) "NG"
if (v12(2)%y(2)/=11)write(6,*) "NG"
v12(2)%x(2)=13
v12(2)%y(2)=13
if (v12(2)%x(2)/=13)write(6,*) "NG"
if (v12(2)%y(2)/=13)write(6,*) "NG"
end subroutine
end
use m01
call s01
print *,'pass'
end
