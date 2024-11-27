module m01
type a
 integer,allocatable::x(:,:,:)
 integer,pointer::y(:,:,:)
end type
contains
subroutine s01(k1,k2)
type(a)::v11(2,4,3),v12(2,4,3)
do n1=k1,k2
allocate(v11(n1,4,3)%x(n1,4,3))
allocate(v11(n1,4,3)%y(n1,4,3))
v11(n1,4,3)%x(n1,4,3)=11
v11(n1,4,3)%y(n1,4,3)=11
v12=v11
v12(n1,4,3)%y=>v11(n1,4,3)%y
if (v11(n1,4,3)%x(n1,4,3)/=11)write(6,*) "NG"
if (v12(n1,4,3)%x(n1,4,3)/=11)write(6,*) "NG"
if (v11(n1,4,3)%y(n1,4,3)/=11)write(6,*) "NG"
if (v12(n1,4,3)%y(n1,4,3)/=11)write(6,*) "NG"
v12(n1,4,3)%x(n1,4,3)=13
v12(n1,4,3)%y(n1,4,3)=13
if (v12(n1,4,3)%x(n1,4,3)/=13)write(6,*) "NG"
if (v12(n1,4,3)%y(n1,4,3)/=13)write(6,*) "NG"
end do
end subroutine
end
use m01
call s01(2,2)
print *,'pass'
end
