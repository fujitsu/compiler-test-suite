integer,parameter::a=SHIFTA(127_1,5_4)
integer,parameter::b=SHIFTA(-128_1,3_8)
integer,parameter::c=SHIFTA(32767_2,13_2)
integer,parameter::d=SHIFTA(-32767_2,13_4)
integer*4,parameter::e=SHIFTA(2147483647_4,6_1)
integer*4,parameter::f=SHIFTA(-2147483648_4,23_8)
integer*8,parameter::g=SHIFTA(9223372036854775807_8,9_2)
integer*8,parameter::h=SHIFTA(-9223372036854775808_8,57_8)
integer,parameter::i=SHIFTA(2,4294967298_8)
if(a .ne. 3)print*,"100"
if(b .ne. -16)print*,"101"
if(c .ne. 3)print*,"102"
if(d .ne. -4)print*,"103"
if(e .ne. 33554431)print*,"104"
if(f .ne. -256)print*,"105"
if(g .ne. 18014398509481983_8)print*,"106"
if(h .ne. -64)print*,"107"
if(i .ne. 0)print*,"108"
print*,"PASS"
end
