use, intrinsic :: ieee_arithmetic
integer :: i=IEEE_SELECTED_REAL_KIND(6,30)
integer :: a=sin(0.1)
if (i/=4)print *,101
write(2,*) a
print *,'pass'
end
