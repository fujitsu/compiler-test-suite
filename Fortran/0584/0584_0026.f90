use ieee_arithmetic
integer ::res
integer,parameter::a1=ieee_selected_real_kind(23,12,2)
integer,parameter::a2=ieee_selected_real_kind(23,12,3)
integer,parameter::a3=ieee_selected_real_kind(23,12122,2)
integer,parameter::a4=ieee_selected_real_kind(23,12122,3)
integer,parameter::a5= ieee_selected_real_kind(2232,12,2)
integer,parameter::a6= ieee_selected_real_kind(2232,12,3)
integer,parameter::a7= ieee_selected_real_kind(2232,12122,2)
integer,parameter::a8= ieee_selected_real_kind(2232,12122,3)

res=ieee_selected_real_kind(23,12,2)
if(res /= a1) print*,"106",res,a1

res= ieee_selected_real_kind(23,12,3)
if(res /= a2) print*,"107",res,a2

res=ieee_selected_real_kind(23,12122,2)
if(res /= a3) print*,"108",res,a3

res=ieee_selected_real_kind(23,12122,3)
if(res /= a4) print*,"109",res,a4

res= ieee_selected_real_kind(2232,12,2)
if(res /= a5) print*,"110",res,a5

res= ieee_selected_real_kind(2232,12,3)
if(res /= a6) print*,"111",res,a6

res= ieee_selected_real_kind(2232,12122,2)
if(res /= a7) print*,"112",res,a7

res= ieee_selected_real_kind(2232,12122,3)
if(res /= a8) print*,"113",res,a8

print*,"pass"

end