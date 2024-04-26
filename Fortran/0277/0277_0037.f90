integer,parameter::a=SHIFTR(I=127_1,SHIFT=1_4)
integer,parameter::b=SHIFTR(SHIFT=1_4,I=127_1)
integer,parameter::c=SHIFTR(I=32767_2,SHIFT=11_8)
integer,parameter::d=SHIFTR(SHIFT=11_8,I=32767_2)
integer,parameter::e=SHIFTR(I=2147483647_4,SHIFT=29_1)
integer,parameter::f=SHIFTR(SHIFT=29_1,I=2147483647_4)
integer*8,parameter::g=SHIFTR(I=9223372036854775807_8,SHIFT=44_2)
integer*8,parameter::h=SHIFTR(SHIFT=44_2,I=9223372036854775807_8)
if(a .ne. b)print*,"100"
if(c .ne. d)print*,"101"
if(e .ne. f)print*,"102"
if(g .ne. h)print*,"103"
print*,"PASS"
end
