module m1
 type x
  integer::x1
  integer::x2
end type
contains
subroutine ss(x)
integer::x(*)
if (any(x(1:2)/=[1,2])) print *,101
end subroutine
subroutine s1(d1,d2)
type(x),contiguous::d1(:)
type(x)           ::d2(:)
call ss( d1%x2 )
call ss( d2%x2 )
end subroutine
end
use m1
type(x):: a(2),aa(3)
a(1)%x2=1
a(2)%x2=2
aa(1)%x2=1
aa(3)%x2=2
call s1(a, aa(::2))
print *,'pass'
end
