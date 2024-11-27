Program test
Real*4,parameter::num(4) = 3.40282347E+38
Real*4,parameter::num2(4,3) = 3.40282347E+38
Real*8,parameter::numd(4) = 1.797693134862316D+308
Real*8,parameter::numd2(4,3) = 1.797693134862316D+308
Real*4::rf = norm2(num)
Real*4::rf2(3) = norm2(num2,1)
Real*4::rf3(4) = norm2(num2,2)
Real*8::rd = norm2(numd)
Real*8::rd2(3) = norm2(numd2,1)
Real*8::rd3(4) = norm2(numd2,2)
if(rf<=3.40282347E+38)print*,"101",rf
if(rf2(1)<=3.40282347E+38)print*,"102",rf2(1)
if(rf2(2)<=3.40282347E+38)print*,"103",rf2(2)
if(rf2(3)<=3.40282347E+38)print*,"103",rf2(3)
!if(rf3(1)<=1.797693134862316D+308)print*,"104",rf3(1)
if(rd<=1.797693134862316D+308)print*,"105",rd
if(rd2(1)<=1.797693134862316D+308)print*,"106",rd2(1)
if(rd2(2)<=1.797693134862316D+308)print*,"107",rd2(3)
if(rd3(1)<=1.797693134862316D+308)print*,"108",rd3(1)
print*,"pass"
end
