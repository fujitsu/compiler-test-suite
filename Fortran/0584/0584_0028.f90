program test
use ieee_arithmetic

integer,parameter,dimension(3) ::r2 =[12,23,2]
integer,parameter::a=10,b=20
integer ::res

integer,parameter :: r11= ieee_selected_real_kind (r2(1))
integer,parameter :: r12 = ieee_selected_real_kind(r2(2))
integer,parameter :: r13= ieee_selected_real_kind(r2(3),r2(1))
integer,parameter :: r14 = ieee_selected_real_kind(p=r2(1)) 
integer,parameter :: r15 =ieee_selected_real_kind(r=r2(1))
integer,parameter :: r16=ieee_selected_real_kind(radix=r2(3),p=r2(1))
integer,parameter ::r17=ieee_selected_real_kind(a,b,radix=r2(3))

res= ieee_selected_real_kind (r2(1))
if(res /= r11) print*,"114"

res= ieee_selected_real_kind (r2(2))
if(res /= r12) print*,"115"

res= ieee_selected_real_kind (r2(3),r2(1))
if(res /= r13) print*,"116"

res= ieee_selected_real_kind (p=r2(1))
if(res /= r14) print*,"117"

res= ieee_selected_real_kind (r=r2(2))
if(res /= r15) print*,"118"

res=ieee_selected_real_kind(radix=r2(3),p=r2(1))
if(res /= r16) print*,"119"

res=ieee_selected_real_kind(a,b,radix=r2(3))
if(res /= r17) print*,"120"
print*,"pass"
end program test
