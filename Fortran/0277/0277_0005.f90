integer*2,parameter::a=SHIFTA(32767_2,BIT_SIZE(0_2)-2)
integer*4,parameter::b=SHIFTA(2147483647_4,BIT_SIZE(0_4)-5)
integer*4,parameter::c=SHIFTA(2147483646_4,BIT_SIZE(0_4)-3)
integer*8,parameter::d=SHIFTA(9223372036854775807_8,BIT_SIZE(0_8)-8)
integer,parameter::e=SHIFTA (IBSET (0, BIT_SIZE (0) - 1), 2)
integer,parameter::f=SHIFTL (7, BIT_SIZE(0)-3)
if(a .ne. 1_2)print*,"100"
if(b .ne. 15_4)print*,"101"
if(c .ne. 3_4)print*,"102"
if(d .ne. 127_8)print*,"103"
if(e .ne. f)print*,"104"
print*,"PASS"
end
