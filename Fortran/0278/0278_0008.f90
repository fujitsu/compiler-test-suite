integer,parameter::a1=LEADZ(1_4)
integer,parameter::a2=LEADZ(1_1)
integer,parameter::a3=LEADZ(1_2)
integer,parameter::a4=LEADZ(1_8)
integer,parameter::b1=LEADZ(0_4)
integer,parameter::b2=LEADZ(0_1)
integer,parameter::b3=LEADZ(0_2)
integer,parameter::b4=LEADZ(0_8)
if (a1 .ne. 31)print*,"100"
if (a2 .ne. 7)print*,"101"
if (a3 .ne. 15)print*,"102"
if (a4 .ne. 63)print*,"103"
if (b1 .ne. 32)print*,"104"
if (b2 .ne. 8)print*,"105"
if (b3 .ne. 16)print*,"106"
if (b4 .ne. 64)print*,"107"
print*,"PASS"
end
