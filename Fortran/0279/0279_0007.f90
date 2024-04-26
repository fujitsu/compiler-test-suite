integer,parameter::a=kind(popcnt(-1_1))
integer,parameter::b=kind(popcnt(-1_2))
integer,parameter::c=kind(popcnt(-1_4))
integer,parameter::d=kind(popcnt(-1_8))
if(a .ne. kind(popcnt(-1_1)))print*,"100"
if(b .ne. kind(popcnt(-1_2)))print*,"101"
if(c .ne. kind(popcnt(-1_4)))print*,"102"
if(d .ne. kind(popcnt(-1_8)))print*,"103"
print*,"PASS"
end
