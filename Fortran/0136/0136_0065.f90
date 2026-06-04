call r4
call r8
call r16
print *,'pass'
contains
subroutine r4
use, intrinsic :: ieee_arithmetic
real::x
x=1.0
if(.not.ieee_support_datatype(x)) print *,'no support'
if(ieee_is_finite(1.0).neqv.ieee_is_finite(x)) print *,'err1'
end subroutine

subroutine r8
use, intrinsic :: ieee_arithmetic
real(8)::x
x=1.0d0
if(.not.ieee_support_datatype(x)) print *,'no support'
if(ieee_is_finite(1.0d0).neqv.ieee_is_finite(x)) print *,'err2'
end subroutine

subroutine r16
use, intrinsic :: ieee_arithmetic
real(16)::x
x=1.0q0
if(.not.ieee_support_datatype(x)) print *,'no support'
if(ieee_is_finite(1.0q0).neqv.ieee_is_finite(x)) print *,'err3'
end subroutine

end
