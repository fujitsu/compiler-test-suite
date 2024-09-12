use ieee_arithmetic

integer,parameter ::a1=ieee_selected_real_kind (10)
integer,parameter ::a2=ieee_selected_real_kind (p=10)
integer,parameter ::a3=ieee_selected_real_kind (2232)
integer,parameter ::a4=ieee_selected_real_kind (p=2232)

integer,parameter ::a5=ieee_selected_real_kind (r=12122)
integer,parameter ::a6=ieee_selected_real_kind (r=12)

integer,parameter ::a7=ieee_selected_real_kind (radix=2)
integer,parameter ::a8=ieee_selected_real_kind (radix=3)

integer ::res

res= ieee_selected_real_kind (10)
if(res /= a1) print*,"101",res,a1

res= ieee_selected_real_kind (p=10)
if(res /= a2) print*,"102",res,a2

res=ieee_selected_real_kind (2232)
if(res /= a3) print*,"103",res,a3

res=ieee_selected_real_kind (p=2232)
if(res /= a4) print*,"104",res,a4

res=ieee_selected_real_kind (r=12122)
if(res /= a5) print*,"105",res,a5

res=ieee_selected_real_kind (r=12)
if(res /= a6) print*,"106",res,a6

res =ieee_selected_real_kind (radix=2)
if(res /= a7) print*,"107",res,a7

res= ieee_selected_real_kind (radix=3)
if(res /= a8) print*,"108",res,a8

print*,"pass"
end
