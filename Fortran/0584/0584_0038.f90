use ieee_arithmetic

integer,parameter::t1= ieee_selected_real_kind(p =20,r=400,radix=2)
integer,parameter::t2= ieee_selected_real_kind(p =15,r=310,radix=2)
integer,parameter::t3= ieee_selected_real_kind(p =20,r=300,radix=2)
integer,parameter::t4= ieee_selected_real_kind(p =15,r=307,radix=2)

integer,parameter::t8= ieee_selected_real_kind(p =20,radix=2)
integer,parameter::t9= ieee_selected_real_kind(p =15,radix=2)
integer,parameter::t10= ieee_selected_real_kind(p =8,radix=2)
integer,parameter::t13= ieee_selected_real_kind(r =307,radix=2)
integer,parameter::t14= ieee_selected_real_kind(r =400, radix=2)
integer,parameter::t15= ieee_selected_real_kind(r =400,p=20)
integer,parameter::t16= ieee_selected_real_kind(r =400,p=15)
integer,parameter::t17= ieee_selected_real_kind(r =30 ,p=20)
integer,parameter::t18= ieee_selected_real_kind(r =307,p=15)
integer,parameter::t19= ieee_selected_real_kind(p =15,r=308,radix=2)
integer,parameter::t20= ieee_selected_real_kind(p =16,radix=2)
if(t1 .ne. 16)print*,"101"
if(t2 .ne. 16)print*,"102"
if(t3 .ne. 16)print*,"103"
if(t4 .ne. 8)print*,"104"
if(t8 .ne. 16)print*,"108"
if(t9 .ne. 8)print*,"109"
if(t10 .ne. 8)print*,"110"
if(t13 .ne. 8)print*,"113"
if(t14 .ne. 16)print*,"114"
if(t15 .ne. 16)print*,"115"
if(t16 .ne. 16)print*,"116"
if(t17 .ne. 16)print*,"117"
if(t18 .ne. 8)print*,"118"
if(t19 .ne. 16)print*,"119"
if(t20 .ne. 16)print*,"119"

print*,"pass"
end
