module mod1
integer,parameter::a=shiftl(127_1,5_4)
integer,parameter::b=shiftl(-128_1,3_8)
integer,parameter::c=shiftl(32767_2,13_2)
integer,parameter::d=shiftl(-32767_2,13_4)
integer,parameter::e=shiftl(2147483647_4,6_1)
integer,parameter::f=shiftl(-2147483648_4,23_8)
integer*8,parameter::g=shiftl(9223372036854775807_8,9_2)
integer*8,parameter::h=shiftl(-9223372036854775808_8,57_8)
end module
use mod1
if(a .ne. -32)print*,"100"
if(b .ne. 0)print*,"101"
if(c .ne. -8192)print*,"102"
if(d .ne. 8192)print*,"103"
if(e .ne. -64)print*,"104"
if(f .ne. 0)print*,"105"
if(g .ne. -512)print*,"106"
if(h .ne. 0)print*,"107"
print*,"PASS"
end
