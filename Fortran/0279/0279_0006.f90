integer,parameter::a=popcnt(-1_1)
integer,parameter::b=popcnt(-1_2)
integer,parameter::c=popcnt(-1_4)
integer,parameter::d=popcnt(-1_8)
if(a .ne. 8)print*,"100"
if(b .ne. 16)print*,"101"
if(c .ne. 32)print*,"102"
if(d .ne. 64)print*,"103"
print*,"PASS"
end
