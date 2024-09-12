use , intrinsic :: ieee_arithmetic
use , intrinsic :: ieee_exceptions

type(ieee_class_type ) :: ty_ict01
real(kind=8) :: r801, r802

r801 = 21.0
r802 = 802.0

ty_ict01 = ieee_class(r801)
r801 = ieee_value(r802, ty_ict01)

print *,'pass'

end
