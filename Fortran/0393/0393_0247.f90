module m1
integer           ,pointer::pp(:)
type x
integer:: x1
integer           ,pointer::p(:)
end type
contains
subroutine ss2(v2)
type (x),intent(in):: v2
call sss2(v2%p,loc(v2%p))
v2%p= v2%p+20
if (any(v2%p/=[1,2,3]+20) ) print *,211
v2%p= v2%p+ 20
end subroutine
subroutine sss2(x,nn)
integer,intent(in)                   ::x(3)
integer(8)::nn
if (loc(x)==nn) print *,502,loc(x),nn
if (any(x/=[1,2,3])) print *,501,x
end subroutine
end
subroutine ss
use m1
type (x):: v
allocate(pp(6))
v%p=>pp(::2)
v%p=[1,2,3]
call ss2(v)
if (any(v%p/=[11,12,13]+30)) print *,1002
end
call ss
print *,'pass'
end
