use ieee_arithmetic
call s1
call s2
print *,"pass"
contains
subroutine s1
if(ieee_selected_real_kind(5_1, 3_1)/=4) print *,'err'
if(ieee_selected_real_kind(5_2, 3_2)/=4) print *,'err'
if(ieee_selected_real_kind(5_4, 3_4)/=4) print *,'err'
if(ieee_selected_real_kind(5_8, 3_8)/=4) print *,'err'
if(ieee_selected_real_kind(5, 3)/=4) print *,'err'
end subroutine
subroutine s2
integer*1::a1,b1
integer*2::a2,b2
integer*4::a4,b4
integer*8::a8,b8
a1=5
b1=3
a2=5
b2=3
a4=5
b4=3
a8=5
b8=3
if(ieee_selected_real_kind(a1,b1)/=4) print *,'err'
if(ieee_selected_real_kind(a2,b2)/=4) print *,'err'
if(ieee_selected_real_kind(a4,b4)/=4) print *,'err'
if(ieee_selected_real_kind(a8,b8)/=4) print *,'err'
end subroutine
end
