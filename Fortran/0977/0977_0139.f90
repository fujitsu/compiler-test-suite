module m01
type a
 complex,allocatable::x(:,:,:)
 complex,pointer::y(:,:,:)
end type
contains
subroutine s01(k1,k2,v11,v12)
type(a)::v11(2,4,3),v12(2,4,3)
do n1=k1,k2
allocate(v11(n1,4,3)%x(n1,4,3))
allocate(v11(n1,4,3)%y(n1,4,3))
v11(n1,4,3)%x(n1,4,3)=(11,12)
v11(n1,4,3)%y(n1,4,3)=(11,12)
v12=v11
v12(n1,4,3)%y=>v11(n1,4,3)%y
if (abs(v11(n1,4,3)%x(n1,4,3)-(11,12))>0.0001)write(6,*) "NG"
if (abs(v12(n1,4,3)%x(n1,4,3)-(11,12))>0.0001)write(6,*) "NG"
if (abs(v11(n1,4,3)%y(n1,4,3)-(11,12))>0.0001)write(6,*) "NG"
if (abs(v12(n1,4,3)%y(n1,4,3)-(11,12))>0.0001)write(6,*) "NG"
v12(n1,4,3)%x(n1,4,3)=(13,14)
v12(n1,4,3)%y(n1,4,3)=(13,14)
if (abs(v12(n1,4,3)%x(n1,4,3)-(13,14))>0.0001)write(6,*) "NG"
if (abs(v12(n1,4,3)%y(n1,4,3)-(13,14))>0.0001)write(6,*) "NG"
end do
end subroutine
end
use m01
type(a)::v11(2,4,3),v12(2,4,3)
call s01(2,2,v11,v12)
print *,'pass'
end
