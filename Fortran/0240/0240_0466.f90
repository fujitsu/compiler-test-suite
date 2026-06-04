call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
real :: result,x,y
x = 4.0
y = 3.0
if (ieee_support_datatype(x) .and. ieee_support_datatype(y)) then
result = ieee_rem(x,y)
end if
if(result.ne.1.0) print *,'err'
end
