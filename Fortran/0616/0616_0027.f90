module m1
type x
  integer ::a1
  character(:),allocatable::a(:)
end type
integer::k
end
subroutine s1
use m1
character(k),allocatable::b(:)
type (x)::v1
 allocate(character(2)::v1%a(2:3))
v1%a(:)=(/'12','34'/)
 allocate(                 b(3:5))
b(:)='abc'
if (any(v1%a/=(/'12','34'/)))print *,101
if (len(v1%a)/=2)print *,102
if (any(lbound(v1%a)/=2))print *,103
if (any(b   /='abc'))print *,201
if (len(b   )/=3)print *,202
if (any(lbound(b   )/=3))print *,203
v1=x(10,b)
if (any(v1%a/='abc'))print *,301
if (len(v1%a)/=3)print *,302
if (any(lbound(v1%a)/=3))print *,303
end
use m1
k=3
call s1
print *,'pass'
end
