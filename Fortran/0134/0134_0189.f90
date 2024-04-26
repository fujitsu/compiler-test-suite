subroutine s1(a)
use ieee_arithmetic
a=1
end
subroutine s2(a)
use ieee_arithmetic
entry      s3(a)
a=1
end
use ieee_arithmetic
call s1(a)
call s2(a)
call s3(a)
print *,'pass'
end

