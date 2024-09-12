integer,parameter ::a1=selected_real_kind (10)
integer,parameter ::a2=selected_real_kind (p=10)
integer,parameter ::a3=selected_real_kind (2232)
integer,parameter ::a4=selected_real_kind (p=2232)

integer,parameter ::a5=selected_real_kind (r=12122)
integer,parameter ::a6=selected_real_kind (r=12)

integer,parameter ::a7=selected_real_kind (radix=2)
integer,parameter ::a8=selected_real_kind (radix=3)

integer ::res

res= selected_real_kind (10,0)
if(res /= a1) print*,"101",res,a1

res= selected_real_kind (p=10,r=0)
if(res /= a2) print*,"102",res,a2

res=selected_real_kind (2232,0)
if(res /= a3) print*,"103",res,a3

res=selected_real_kind (p=2232,r=0)
if(res /= a4) print*,"104",res,a4

res=selected_real_kind (p=0,r=12122)
if(res /= a5) print*,"105",res,a5

res=selected_real_kind (p=0,r=12)
if(res /= a6) print*,"106",res,a6

res =selected_real_kind (p=0,r=0,radix=2)
if(res /= a7) print*,"107",res,a7

res= selected_real_kind (p=0,r=0,radix=3)
if(res /= a8) print*,"108",res,a8

print*,"pass"
end
