integer,parameter::t1= selected_real_kind(p =15,r=307,radix=2)
integer,parameter::t2= selected_real_kind(p =15,r=100,radix=2)
integer,parameter::t3= selected_real_kind(p =6,r=300,radix=2)
integer,parameter::t4= selected_real_kind(p =6,r=37,radix=2)

integer,parameter::t8= selected_real_kind(p =15,radix=2)
integer,parameter::t9= selected_real_kind(p =6,radix=2)
integer,parameter::t10= selected_real_kind(p =8,radix=2)
integer,parameter::t13= selected_real_kind(r =307,radix=2)
integer,parameter::t15= selected_real_kind(r =307,p=15)
integer,parameter::t16= selected_real_kind(r =307,p=6)
integer,parameter::t17= selected_real_kind(r =30 ,p=13)
integer,parameter::t18= selected_real_kind(r =30,p=5)
if(t1 .ne. 8)print*,"101"
if(t2 .ne. 8)print*,"102"
if(t3 .ne. 8)print*,"103"
if(t4 .ne. 4)print*,"104"
if(t8 .ne. 8)print*,"108"
if(t9 .ne. 4)print*,"109"
if(t10 .ne. 8)print*,"110"
if(t13 .ne. 8)print*,"113"
if(t15 .ne. 8)print*,"115"
if(t16 .ne. 8)print*,"116"
if(t17 .ne. 8)print*,"117"
if(t18 .ne. 4)print*,"118"

print*,"pass"
end
