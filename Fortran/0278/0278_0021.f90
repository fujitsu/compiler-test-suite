integer,parameter::a=TRAILZ(8_4)
integer,parameter::b1=TRAILZ(0_4)
integer,parameter::b2=TRAILZ(0_1)
integer,parameter::b3=TRAILZ(0_2)
integer,parameter::b4=TRAILZ(0_8)
if (a .ne. 3)print*,"100"
if (b1 .ne. 32)print*,"101"
if (b2 .ne. 8)print*,"102"
if (b3 .ne. 16)print*,"103"
if (b4 .ne. 64)print*,"104"
print*,"PASS"
end
