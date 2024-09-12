program test
use ieee_arithmetic

integer ::res
integer,parameter ::a=10,b=20,c=10,d=2

integer,parameter::a1=ieee_selected_real_kind(a)
integer,parameter::a2=ieee_selected_real_kind(a,b)
integer,parameter::a3=ieee_selected_real_kind(a,b,c)
integer,parameter::a4=ieee_selected_real_kind(d)
integer,parameter::a5=ieee_selected_real_kind(p=a,radix=d)
integer,parameter::a6=ieee_selected_real_kind(r=b,radix=a)

res=ieee_selected_real_kind(a)
if(res /= a1) print*,"106"

res= ieee_selected_real_kind(a,b)
if(res /= a2) print*,"107"

res=ieee_selected_real_kind(a,b,c)
if(res /= a3) print*,"108"

res=ieee_selected_real_kind(d)
if(res /= a4) print*,"109"

res= ieee_selected_real_kind(p=a,radix=d)
if(res/= a5) print*,"110",res

res=ieee_selected_real_kind(r=b,radix=a)
if(res/=a6) print*,"111",res

print*,"pass"
end program test
