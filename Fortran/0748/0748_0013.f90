module m1
type x
integer:: x1
integer           ,pointer::p(:)
end type
contains
subroutine ss1(v1)
type (x),intent(in):: v1
v1%p=0
call sss1(v1%p)
end subroutine
subroutine ss2(v2)
type (x),intent(in):: v2
call sss2(v2%p)
end subroutine
subroutine sss1(x)
integer,intent(inout)     ::x(3)
if (any(x/=[1,2,3])) print *,601,x
x=x+10
end subroutine
end
subroutine ss
use m1
type (x):: v
allocate(v%p(3))
v%p=[1,2,3]
call ss1(v)
if (any(v%p/=[11,12,13])) print *,1001
v%p=[1,2,3]
call ss2(v)
if (any(v%p/=[11,12,13]+10)) print *,1002
end
subroutine sss2(x)
integer                   ::x(3)
if (any(x/=[1,2,3])) print *,501,x
x=x+20
end
call ss
print *,'pass'
end

