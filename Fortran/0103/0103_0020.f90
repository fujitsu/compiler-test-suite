integer*4,parameter::a=2147483647_4
integer*4,parameter::b=2147483646_4
integer*4,parameter::c=-2147483647_4
integer*4,parameter::d=-2147483646_4
integer*8,parameter::e=9223372036854775807_8
integer*8,parameter::f=9223372036854775806_8
integer*8,parameter::g=-9223372036854775808_8
integer*8,parameter::h=-9223372036854775807_8
integer,parameter::m=DSHIFTL(a,b,4)
integer(kind=4),parameter::n=DSHIFTL(c,b,16)
integer(kind=4),parameter::o=DSHIFTL(c,d,31)
integer(kind=4),parameter::p=DSHIFTL(b,d,32)
integer,parameter::q=DSHIFTL(e,f,8)
integer(kind=4),parameter::r=DSHIFTL(g,f,16)
integer*8,parameter::s=DSHIFTL(g,h,63)
integer*8,parameter::t=DSHIFTL(e,h,64)
if(m .ne. -9)print*,"100"
if(n .ne. 98303 )print*,"101"
if(o .ne. -1073741823 )print*,"102"
if(p .ne. -2147483646 )print*,"103"
if(q .ne. -129 )print*,"104"
if(r .ne. 32767 )print*,"105"
if(s .ne. 4611686018427387904_8 )print*,"106"
if(t .ne. -9223372036854775807_8)print*,"107"
print*,"PASS"
end

