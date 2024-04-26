integer,parameter::a(6)= TRAILZ ([0_1, 2_1, -1_1, 4_1, 5_1, 6_1])
integer,parameter::b(6)= TRAILZ ([0_2, 2_2, -128_2, 4_2, 5_2, 6_2])
integer,parameter::c(6)= TRAILZ ([0_4, 2_4, -32767_4, 4_4, 5_4, 6_4])
integer*8,parameter::d(6)=TRAILZ([9223372036854775807_8,9223372036854775806_8,9223372036854775805_8,-9223372036854775807_8,0_8,-9223372036854775806_8])
if(any(a .ne. [8,1,0,2,0,1]))print*,"100"
if(any(b .ne. [16,1,7,2,0,1]))print*,"101"
if(any(c .ne. [32,1,0,2,0,1]))print*,"102"
if(any(d .ne. [0,1,0,0,64,1]))print*,"103"
print*,"PASS"
end
