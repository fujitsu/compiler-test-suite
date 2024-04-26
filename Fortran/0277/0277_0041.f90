module mod1
integer,parameter::a=SHIFTR(127_1,5_4)
integer,parameter::b=SHIFTR(-128_1,3_8)
integer,parameter::c=SHIFTR(32767_2,13_2)
integer,parameter::d=SHIFTR(-32767_2,13_4)
integer*4,parameter::e=SHIFTR(2147483647_4,6_1)
integer*4,parameter::f=SHIFTR(-2147483648_4,23_8)
integer*8,parameter::g=SHIFTR(9223372036854775807_8,9_2)
integer*8,parameter::h=SHIFTR(-9223372036854775808_8,57_8)
end module
use mod1
if(a .ne. 3)print*,"100"
if(b .ne. 16)print*,"101"
if(c .ne. 3)print*,"102"
if(d .ne. 4)print*,"103"
if(e .ne. 33554431)print*,"104"
if(f .ne. 256)print*,"105"
if(g .ne. 18014398509481983_8)print*,"106"
if(h .ne. 64)print*,"107"
print*,"PASS"
end
