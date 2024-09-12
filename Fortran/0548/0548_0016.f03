call cn1
call cn2
call cn3
print *,'pass'
contains
subroutine cn1
use, intrinsic :: ieee_arithmetic
if(ieee_selected_real_kind(6,30)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(6_1,30_1)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(6_2,30_2)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(6_4,30_4)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(6_1,30_2)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(6_1,30_4)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(6_1,30_8)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(6_2,30_4)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(6_2,30_8)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(6_4,30_8)/=kind(0.0)) print *,'err'
end subroutine
subroutine cn2
use, intrinsic :: ieee_arithmetic
integer(1)::i1(2)
integer(2)::i2(2)
integer(4)::i4(2)
integer(8)::i8(2)
i1=6
i2=6
i4=6
i8=6

if(ieee_selected_real_kind(i1(1),30_1)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(i2(1),30_2)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(i4(1),30_4)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(i1(1),30_2)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(i1(1),30_4)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(i1(1),30_8)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(i2(1),30_4)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(i2(1),30_8)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(i4(1),30_8)/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(i8(1),30_8)/=kind(0.0)) print *,'err'

if(ieee_selected_real_kind(R=30_1,P=i1(2))/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(R=30_2,P=i2(2))/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(R=30_4,P=i4(2))/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(R=30_2,P=i1(2))/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(R=30_4,P=i1(2))/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(R=30_8,P=i1(2))/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(R=30_4,P=i2(2))/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(R=30_8,P=i2(2))/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(R=30_8,P=i4(2))/=kind(0.0)) print *,'err'
if(ieee_selected_real_kind(R=30_8,P=i8(2))/=kind(0.0)) print *,'err'

end subroutine
subroutine cn3
use, intrinsic :: ieee_arithmetic
if(ieee_selected_real_kind(6,30)/=kind(0.0)) print *,'err'

if(ieee_selected_real_kind(6,35)/=kind(0.0)) print *,'err1' 
if(ieee_selected_real_kind(7,36)/=kind(0.0d0)) print *,'err2' 
if(ieee_selected_real_kind(8,38)/=kind(0.0d0)) print *,'err3' 
if(ieee_selected_real_kind(10,350)/=kind(0.0q0)) print *,'err4'
if(ieee_selected_real_kind(11,400)/=kind(0.0q0)) print *,'err5'
if(ieee_selected_real_kind(12,450)/=kind(0.0q0)) print *,'err6'

end subroutine

end
