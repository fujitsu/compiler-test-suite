module m01
type a
 integer,allocatable::x(:,:,:)
 integer,pointer::y(:,:,:)
end type
contains
subroutine s01()
type(a)::v11(2,4,3),v12(2,4,3)
allocate(v11(2,4,3)%x(2,4,3))
allocate(v11(2,4,3)%y(2,4,3))
v11(2,4,3)%x(2,4,3)=11
v11(2,4,3)%y(2,4,3)=11
v12=v11
v12(2,4,3)%y=>v11(2,4,3)%y
if (v11(2,4,3)%x(2,4,3)/=11)write(6,*) "NG"
if (v12(2,4,3)%x(2,4,3)/=11)write(6,*) "NG"
if (v11(2,4,3)%y(2,4,3)/=11)write(6,*) "NG"
if (v12(2,4,3)%y(2,4,3)/=11)write(6,*) "NG"
v12(2,4,3)%x(2,4,3)=13
v12(2,4,3)%y(2,4,3)=13
if (v12(2,4,3)%x(2,4,3)/=13)write(6,*) "NG"
if (v12(2,4,3)%y(2,4,3)/=13)write(6,*) "NG"
end subroutine
end
use m01
call s01
print *,'pass'
end
