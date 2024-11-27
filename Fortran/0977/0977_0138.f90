module m01
type a
 complex,allocatable::x(:,:,:)
 complex,pointer::y(:,:,:)
end type
contains
subroutine s01(k1,k2)
type q
type(a),pointer::v11(:,:,:),v12(:,:,:)
end type
type(q)::t
allocate(t%v11(2,4,3),t%v12(2,4,3))
do n1=k1,k2
allocate(t%v11(n1,4,3)%x(n1,4,3))
allocate(t%v11(n1,4,3)%y(n1,4,3))
t%v11(n1,4,3)%x(n1,4,3)=(11,12)
t%v11(n1,4,3)%y(n1,4,3)=(11,12)
t%v12=t%v11
t%v12(n1,4,3)%y=>t%v11(n1,4,3)%y
if (abs(t%v11(n1,4,3)%x(n1,4,3)-(11,12))>0.0001)write(6,*) "NG"
if (abs(t%v12(n1,4,3)%x(n1,4,3)-(11,12))>0.0001)write(6,*) "NG"
if (abs(t%v11(n1,4,3)%y(n1,4,3)-(11,12))>0.0001)write(6,*) "NG"
if (abs(t%v12(n1,4,3)%y(n1,4,3)-(11,12))>0.0001)write(6,*) "NG"
t%v12(n1,4,3)%x(n1,4,3)=(13,14)
t%v12(n1,4,3)%y(n1,4,3)=(13,14)
if (abs(t%v12(n1,4,3)%x(n1,4,3)-(13,14))>0.0001)write(6,*) "NG"
if (abs(t%v12(n1,4,3)%y(n1,4,3)-(13,14))>0.0001)write(6,*) "NG"
end do
end subroutine
end
use m01
call s01(2,2)
print *,'pass'
end
