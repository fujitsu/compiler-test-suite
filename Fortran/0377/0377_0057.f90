use, intrinsic  :: ieee_arithmetic
use, intrinsic  :: ieee_exceptions

integer(kind=4) :: i4_1, i4_2
real :: rr

i4_1 = 1
i4_2 = 2

rr = ieee_selected_real_kind(i4_1, i4_2)
rr = ieee_selected_real_kind(p = i4_1, r = i4_2)

print *,'pass'

end
