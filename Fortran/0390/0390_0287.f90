module m1
type x
integer:: x1
integer           ,allocatable::p
end type
contains
subroutine ss2(v2)
type (x),intent(in):: v2
call sss2(v2%p)
if (   (v2%p/=1) ) print *,211
end subroutine
end
subroutine ss
use m1
type (x):: v
allocate(v%p)
v%p=1
call ss2(v)
if (v%p/=1) print *,1002
end
subroutine sss2(x)
integer                   ::x
if (x/=1) print *,501,x
end
call ss
print *,'pass'
end

