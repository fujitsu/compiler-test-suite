integer*1,parameter::a=126_1
integer*1,parameter::b=127_1
integer*1,parameter::c=-4_1
integer*1,parameter::d=-4_1
integer*2,parameter::e=32766_2
integer*2,parameter::f=32767_2
integer*2,parameter::g=-32767_2
integer*2,parameter::h=-32768_2
integer*4,parameter::i=2147483646_4
integer*4,parameter::j=2147483647_4
integer*4,parameter::k=-2147483646_4
integer*4,parameter::l=-2147483647_4
integer*8,parameter::w=9223372036854775806_8
integer*8,parameter::x=9223372036854775807_8
integer*8,parameter::y=-9223372036854775807_8
integer*8,parameter::z=-9223372036854775808_8
integer,parameter::m=DSHIFTR(a,b,8)
integer,parameter::n=DSHIFTR(c,d,8)
integer,parameter::o=DSHIFTR(e,f,16)
integer,parameter::p=DSHIFTR(g,h,16)
integer*4,parameter::q=DSHIFTR(i,j,32)
integer*4,parameter::r=DSHIFTR(k,l,32)
integer*8,parameter::s=DSHIFTR(w,x,64)
integer*8,parameter::t=DSHIFTR(y,z,64)
if(m .ne. 126 )print*,"100"
if(n .ne. -4)print*,"101"
if(o .ne. 32766)print*,"102"
if(p .ne. -32767)print*,"103"
if(q .ne. 2147483646_4 )print*,"104"
if(r .ne. -2147483646_4 )print*,"105"
if(s .ne. 9223372036854775806_8 )print*,"106"
if(t .ne. -9223372036854775807_8)print*,"107"
print*,"PASS"
end

