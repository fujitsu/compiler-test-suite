call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
use ieee_arithmetic
integer::a11(kind(ieee_support_datatype([1.0])))
entry s2
entry s3
entry s4
if (ubound(a11,1)/=4) print *,100
end
