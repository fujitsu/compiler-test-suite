integer*2,parameter::a=SHIFTR(32767_2,BIT_SIZE(0_2)-2)
integer*4,parameter::b=SHIFTR(2147483647_4,BIT_SIZE(0_4)-5)
integer*8,parameter::c=SHIFTR(9223372036854775807_8,BIT_SIZE(0_8)-8)
if(a .ne. 1_2)print*,"100"
if(b .ne. 15_4)print*,"101"
if(c .ne. 127_8)print*,"102"
print*,"PASS"
end
