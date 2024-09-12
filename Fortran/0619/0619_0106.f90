module m1
type x
  character(:),allocatable::a(:)
end type
character(:),allocatable::b(:)
end
subroutine s1
use m1
type (x),allocatable::v1(:),v2(:)
allocate(v1(2),v2(2))
 allocate(character(2)::v1(2)%a(2:3))
 allocate(character(2)::v2(2)%a(4:5))
v1(2)%a(:)='12'
v2(2)%a(:)='34'
if (any(v2(2)%a/='34'))print *,400
v2=v1
if (any(v2(2)%a/='12'))print *,401
if (len(v2(2)%a)/=2)print *,402
if (any(lbound(v2(2)%a)/=2))print *,403
end
call s1
print *,'pass'
end

