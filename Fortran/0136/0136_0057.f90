call aaa
call bbb
print *,'pass'
contains
subroutine aaa
use, intrinsic :: ieee_arithmetic
use, intrinsic :: ieee_features
real(4)::x
real(8)::r,d,y
r=1.0d0
d=-1.0d0
x=-1.0
y=-1.0d0
if(IEEE_SUPPORT_SQRT(1.0).neqv..true.) print *,'err1'
if(IEEE_SUPPORT_SQRT(r).neqv..true.) print *,'err3'
if(IEEE_SUPPORT_SQRT(d).neqv..true.) print *,'err4'
if(IEEE_IS_NAN(SQRT(r)).neqv..false.) print *,'err7'
if(IEEE_IS_NAN(SQRT(1.0d0)).neqv..false.) print *,'err8'
end subroutine
subroutine bbb
use,intrinsic::ieee_arithmetic
if(ieee_selected_real_kind(p=6)/=4) print *,'err9'
if(ieee_selected_real_kind(R=30)/=3) print *,'err10'
if(ieee_selected_real_kind(6,30)/=4) print *,'err11'
end subroutine

end
