use, intrinsic :: ieee_arithmetic
integer :: i=IEEE_SELECTED_REAL_KIND(1)
real    :: a=sin(0.1)
if (i/= IEEE_SELECTED_REAL_KIND(1))print *,102
if (abs(a-sin(0.1))>0.000001)print *,103
print *,'pass'
end
