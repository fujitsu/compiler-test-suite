call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
real :: result,x
integer ::i
x = 1.0
i = 2
if (ieee_support_datatype(x)) then
result = ieee_scalb(x,i)
end if
if(result.ne.4.0) print *,'err'
end
