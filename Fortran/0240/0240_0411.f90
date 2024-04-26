call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
real ::result,x=1.0
type(ieee_class_type) :: class
class = ieee_positive_normal
if (ieee_support_datatype(x)) then
result = ieee_value(x,class)
end if
if(result.ne.1.0) print *,'err'
end
