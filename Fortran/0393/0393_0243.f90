module m1
type y
  integer::y1(3)
end type
type x
integer:: x1
type (y)          ,pointer::p(:)
end type
contains
subroutine ss2(v2)
type (x),intent(in):: v2
call sss2(v2%p(3)%y1,loc(v2%p(3)%y1))
if (any(v2%p(3)%y1/=[1,2,3]+20) ) print *,211
v2%p(3)%y1= v2%p(3)%y1+ 20
end subroutine
end
subroutine ss
use m1
type (x):: v
allocate(v%p(3))
v%p(3)%y1=[1,2,3]
call ss2(v)
if (any(v%p(3)%y1/=[11,12,13]+30)) print *,1002
end
subroutine sss2(x,nn)
integer                   ::x(3)
integer(8)::nn
if (loc(x)/=nn) print *,502,loc(x),nn
if (any(x/=[1,2,3])) print *,501,x
x=x+20
end
call ss
print *,'pass'
end
