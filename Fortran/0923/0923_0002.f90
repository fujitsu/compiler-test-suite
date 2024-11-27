use ieee_arithmetic

integer,parameter::t2= ieee_selected_real_kind(p =3,r=4,radix=2)
integer,parameter::t5= ieee_selected_real_kind(p =1,r=1,radix=2)
integer,parameter::t3= ieee_selected_real_kind(p =4,r=5,radix=2)
integer,parameter::t4= ieee_selected_real_kind(p =5,r=3,radix=2)
integer,parameter::t12= ieee_selected_real_kind(p =3,radix=2)
integer,parameter::t15= ieee_selected_real_kind(p =4,radix=2)
integer,parameter::t13= ieee_selected_real_kind(p =1,radix=2)
integer,parameter::t22= ieee_selected_real_kind(r =1,radix=2)
integer,parameter::t25= ieee_selected_real_kind(r =4,radix=2)
integer,parameter::t23= ieee_selected_real_kind(r =5,radix=2)
integer,parameter::t35= ieee_selected_real_kind(r =4, p=4)
integer,parameter::t26= ieee_selected_real_kind(r =4,p=2)
integer,parameter::t27= ieee_selected_real_kind(r =4,p=5)
integer,parameter::t28= ieee_selected_real_kind(r =4 ,p=3)
integer,parameter::t29= ieee_selected_real_kind(r =2,p=3)
integer,parameter::t30= ieee_selected_real_kind(r =6,p=3)

integer,parameter::q1= ieee_selected_real_kind(r =4,p=1,radix=2)
integer,parameter::q2= ieee_selected_real_kind(r =2,p=1,radix=2)
integer,parameter::q3= ieee_selected_real_kind(r =-1,p=-11,radix=2)
integer,parameter::q31= ieee_selected_real_kind(p=-11,radix=2)
integer,parameter::q32= ieee_selected_real_kind(r=-1,radix=2)

integer,parameter::q4= ieee_selected_real_kind(r =-1,p=6,radix=2)
integer,parameter::q5= ieee_selected_real_kind(r =-1,p=4,radix=2)
integer,parameter::q6= ieee_selected_real_kind(r =-1,p=7,radix=2)

integer,parameter::q7= ieee_selected_real_kind(r =37,p=6,radix=2)
integer,parameter::q8= ieee_selected_real_kind(r =36,p=6,radix=2)
integer,parameter::q9= ieee_selected_real_kind(r =307,p=6,radix=2)
integer,parameter::q10= ieee_selected_real_kind(r =308,p=6,radix=2)
integer,parameter::q11= ieee_selected_real_kind(r =307,p=6,radix=2)

if(t2 .ne. 2)print*,"101"
if(t3 .ne. 4)print*,"102"
if(t4 .ne. 4)print*,"103"
if(t5 .ne. 2)print*,"104"
if(t15 .ne. 4)print*,"105"
if(t12 .ne. 2)print*,"106"
if(t13 .ne. 2)print*,"107"
if(t22 .ne. 2)print*,"108"
if(t25 .ne. 2)print*,"109"
if(t23 .ne. 3)print*,"110"
if(t26 .ne. 2)print*,"111"
if(t27 .ne. 4)print*,"112"
if(t28 .ne. 2)print*,"113"
if(t29 .ne. 2)print*,"114"
if(t30 .ne. 4)print*,"115"
if(t35 .ne. 4)print*,"116"
if(q1 .ne. 2)print*,"116"
if(q2 .ne. 2)print*,"117"
if(q3 .ne. 2)print*,"118"
if(q31 .ne. 2)print*,"301"
if(q32 .ne. 2)print*,"302"
if(q4 .ne. 4)print*,"211"
if(q5 .ne. 4)print*,"222"
if(q6 .ne. 8)print*,"223"
if(q7 .ne. 4)print*,"224"
if(q8 .ne. 4)print*,"225"
if(q9 .ne. 8)print*,"226"
if(q10 .ne. 16)print*,"227"
if(q11 .ne. 8)print*,"228"
print*,"pass"
end

