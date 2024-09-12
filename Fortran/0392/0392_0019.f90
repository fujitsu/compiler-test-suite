module m1
type x
integer:: x1
integer           ,pointer::p(:)
end type
contains
function  isss2(y,nn)
type(x),intent(in)::y(2)
integer(8)::nn
isss2=2
if (loc(y)==nn) print *,502
if (any(y%x1/=100)) print *,503
do k=1,2
if (any(y(k)%p/=[1,2,3])) print *,501
y(k)%p=y(k)%p+1
end do
call zzz(loc(y(1)))
call zzz(loc(y(2)))
call chk(y)
contains
subroutine chk(y)
type(x),intent(in)::y(2)
if (any(y%x1/=-1)) print *,603
end subroutine
end function  
end
subroutine ss
use m1
type (x):: v(3)
do k=1,3
allocate(v(k)%p(3))
v(k)%p=[1,2,3]
end do
v%x1=100
icall=isss2(v(1:3:2),loc(v))
if (icall/=2) print *,301
if (any(v%x1/=100)) print *,703
if (any(v(1)%p/=[1,2,3]+1)) print *,10021
if (any(v(2)%p/=[1,2,3]  )) print *,10022
if (any(v(3)%p/=[1,2,3]+1)) print *,10023
end
call ss
print *,'pass'
end
subroutine zzz(nn)
type x
integer:: x1
end type
type(x):: tt
pointer(nn,tt)
tt%x1=-1
end

