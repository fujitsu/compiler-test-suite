integer,parameter ::a1=selected_real_kind (10)
integer,parameter ::a2=selected_real_kind (p=10)
integer,parameter ::a3=selected_real_kind (r=10)
integer,parameter ::a4=selected_real_kind (radix=2)
integer,parameter ::a5=selected_real_kind (p=11,r=21)
integer,parameter ::a6=selected_real_kind (r=21,p=11)
integer,parameter ::a7=selected_real_kind (p=10,radix=2)
integer,parameter ::a8=selected_real_kind (r=10,radix=2)
integer,parameter ::a9=selected_real_kind (p=10,r=21,radix=2)

integer ::res

res= selected_real_kind (10)
if(res /= a1) print*,"101"

res= selected_real_kind (p=10)
if(res /= a2) print*,"102"

res=selected_real_kind (r=10)
if(res /= a3) print*,"103"

res=selected_real_kind (radix=2)
if(res /= a4) print*,"104"

res=selected_real_kind (p=11,r=21)
if(res /= a5) print*,"105"

res=selected_real_kind (r=21,p=11)
if(res /= a6) print*,"106"

res =selected_real_kind (p=10,radix=2)
if(res /= a7) print*,"107"

res= selected_real_kind (r=10,radix=2)
if(res /= a8) print*,"108"

res= selected_real_kind (p=10,r=21,radix=2)
if(res /= a9) print*,"109"

print*,"pass"
end