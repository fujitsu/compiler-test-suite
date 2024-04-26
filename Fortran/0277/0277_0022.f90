integer*2,parameter::a=SHIFTL(7_2,BIT_SIZE(0_2)-2)
integer*4,parameter::b=SHIFTL(7_4,BIT_SIZE(0_4)-5)
integer*8,parameter::c=SHIFTL(7_8,BIT_SIZE(0_8)-8)
if(a .ne. -16384_2)print*,"100"
if(b .ne. 939524096_4)print*,"101"
if(c .ne. 504403158265495552_8)print*,"102"
print*,"PASS"
end
