integer,parameter::a=3
integer,parameter::b=SHIFTA(a,1)
integer,parameter::c=SHIFTA(3,1)
integer,parameter::x1 = SHIFTA(-1_8,1)
integer,parameter::x2 = SHIFTA(-1_4,1)
integer,parameter::x3 = SHIFTA(-1_2,1)
integer,parameter::x4 = SHIFTA(-1_1,1)
integer*8,parameter::y1 = SHIFTA(-1_8,64)
integer,parameter::y2 = SHIFTA(-1_4,32)
integer,parameter::y3 = SHIFTA(-1_2,16)
integer,parameter::y4 = SHIFTA(-1_1,8)
integer*8,parameter::z1 = SHIFTA(-1_8,0)
integer,parameter::z2 = SHIFTA(-1_4,0)
integer,parameter::z3 = SHIFTA(-1_2,0)
integer,parameter::z4 = SHIFTA(-1_1,0)
integer*8,parameter::u1 = SHIFTA(-9223372036844775808_8,1)
integer*4,parameter::u2 = SHIFTA(-2142423348_4,1)
integer,parameter::u3 = SHIFTA(-32768_2,1)
integer,parameter::u4 = SHIFTA(-128_1,1)
integer*8,parameter::v1 = SHIFTA(-9223372036844775808_8,64)
integer,parameter::v2 = SHIFTA(-2142423347_4,32)
integer,parameter::v3 = SHIFTA(-32768_2,16)
integer,parameter::v4 = SHIFTA(-128_1,8)
integer*8,parameter::w1 = SHIFTA(-9223372036844775808_8,0)
integer*4,parameter::w2 = SHIFTA(-2142423348_4,0)
integer,parameter::w3 = SHIFTA(-32768_2,0)
integer,parameter::w4 = SHIFTA(-128_1,0)
if(b .ne. 1)print*,"100"
if(c .ne. 1)print*,"101"
if(x1 .ne. -1)print*,"102"
if(x2 .ne. -1)print*,"103"
if(x3 .ne. -1)print*,"104"
if(x4 .ne. -1)print*,"105"
if(y1 .ne. -1)print*,"106"
if(y2 .ne. -1)print*,"107"
if(y3 .ne. -1)print*,"108"
if(y4 .ne. -1)print*,"109"
if(z1 .ne. -1)print*,"110"
if(z2 .ne. -1)print*,"111"
if(z3 .ne. -1)print*,"112"
if(z4 .ne. -1)print*,"113"
if(u1 .ne. -4611686018422387904_8)print*,"114"
if(u2 .ne. -1071211674)print*,"115"
if(u3 .ne. -16384)print*,"116"
if(u4 .ne. -64)print*,"117"
if(v1 .ne. -1)print*,"118"
if(v2 .ne. -1)print*,"119"
if(v3 .ne. -1)print*,"120"
if(v4 .ne. -1)print*,"121"
if(w1 .ne. -9223372036844775808_8)print*,"122"
if(w2 .ne. -2142423348)print*,"123"
if(w3 .ne. -32768)print*,"124"
if(w4 .ne. -128)print*,"125"
print*,"PASS"
end
