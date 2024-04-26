module m
contains
subroutine s(explicit_shape,assumed_shape)
integer::explicit_shape(2)
integer::assumed_shape(:)
if (any(explicit_shape/=1))print *,1,explicit_shape
if (any(assumed_shape/=2))print *,2,assumed_shape
end subroutine
end
use m
integer,pointer::p(:)
allocate(p(2))
p=1
k=2
call ss(p)
print *,'pass'
contains
subroutine ss(p)
integer,pointer::p(:)
call s(p,(/k/))
end subroutine
end
