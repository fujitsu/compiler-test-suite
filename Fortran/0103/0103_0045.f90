integer*4,parameter::a=2147483647_4
integer*4,parameter::b=2147483646_4
integer*4,parameter::c=-2147483647_4
integer*4,parameter::d=-2147483646_4
integer*8,parameter::e=9223372036854775807_8
integer*8,parameter::f=9223372036854775806_8
integer*8,parameter::g=-9223372036854775808_8
integer*8,parameter::h=-9223372036854775807_8
integer*4,parameter::m=DSHIFTR(a,b,4)
integer*4,parameter::n=DSHIFTR(c,b,16)
integer*4,parameter::o=DSHIFTR(c,d,31)
integer*4,parameter::p=DSHIFTR(b,d,32)
integer*8,parameter::q=DSHIFTR(e,f,8)
integer*8,parameter::r=DSHIFTR(g,f,16)
integer*8,parameter::s=DSHIFTR(g,h,63)
integer*8,parameter::t=DSHIFTR(e,h,64)
if(m .ne. -134217729 )print*,"100"
if(n .ne. 98303)print*,"101"
if(o .ne. 3 )print*,"102"
if(p .ne. 2147483646)print*,"103"
if(q .ne. -36028797018963969_8 )print*,"104"
if(r .ne. 140737488355327_8)print*,"105"
if(s .ne. 1)print*,"106"
if(t .ne. 9223372036854775807_8)print*,"107"
print*,"PASS"
end

