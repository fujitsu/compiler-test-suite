call s1
print *,'pass'
end
subroutine s1
use ieee_arithmetic
integer::a11(kind(ieee_support_datatype([1.0])))
end
