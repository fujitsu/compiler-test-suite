call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
integer ::result
result = ieee_selected_real_kind(6,30)
if(result.ne.4) print *,'err'
end
