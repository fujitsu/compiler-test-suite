call s1
call s2
print *,'pass'
end
subroutine s1
use, intrinsic :: ieee_arithmetic
logical*4 l1
logical*8 l2
call ieee_get_underflow_mode(l1)
call ieee_get_underflow_mode(l2)
if(l1.neqv.l2) print *,'err1'

end
subroutine s2
use, intrinsic :: ieee_arithmetic
logical*4 l1
logical*8 l2
l1=.true.
l2=.true.
call ieee_set_underflow_mode(l1)
call ieee_set_underflow_mode(l2)
if(l1.neqv.l2) print *,'err2'

end
