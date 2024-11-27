module m01
type z
  integer::w
end type
type a
 type(z),allocatable::x(:,:,:)
 type(z),pointer::y(:,:,:)
end type
interface operator(/=)
module procedure sx
end interface
contains
subroutine s01(k1,k2)
type(a)::v11(2,4,3),v12(2,4,3)
do n1=k1,k2
allocate(v11(n1,4,3)%x(n1,4,3))
allocate(v11(n1,4,3)%y(n1,4,3))
v11(n1,4,3)%x(n1,4,3)=z(11)
v11(n1,4,3)%y(n1,4,3)=z(11)
v12=v11
v12(n1,4,3)%y=>v11(n1,4,3)%y
if (v11(n1,4,3)%x(n1,4,3)/=z(11))write(6,*) "NG"
if (v12(n1,4,3)%x(n1,4,3)/=z(11))write(6,*) "NG"
if (v11(n1,4,3)%y(n1,4,3)/=z(11))write(6,*) "NG"
if (v12(n1,4,3)%y(n1,4,3)/=z(11))write(6,*) "NG"
v12(n1,4,3)%x(n1,4,3)=z(13)
v12(n1,4,3)%y(n1,4,3)=z(13)
if (v12(n1,4,3)%x(n1,4,3)/=z(13))write(6,*) "NG"
if (v12(n1,4,3)%y(n1,4,3)/=z(13))write(6,*) "NG"
end do
end subroutine
function sx(w1,w2)
type(z),intent(in)::w1,w2
logical::sx
sx=w1%w/=w2%w
end function  
end
use m01
call s01(2,2)
print *,'pass'
end
