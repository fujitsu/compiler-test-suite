call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
real ::result,x,y
x = 2.0
y = -1.0
if (ieee_support_datatype(x) .and. ieee_support_datatype(y)) then
result = ieee_copy_sign(x,y)
end if
if(result.ne.-2.0) print *,'err'
end
