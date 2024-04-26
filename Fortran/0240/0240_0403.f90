call s
print *,'pass'
end
subroutine s
use, intrinsic :: ieee_arithmetic
logical ::result
result = ieee_support_inf()
if(result.neqv..true.) print *,'err'
end
