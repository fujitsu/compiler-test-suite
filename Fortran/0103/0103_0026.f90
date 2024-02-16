integer*1,parameter::c=-128_1
integer*1,parameter::d=127_1
integer*2,parameter::e=32767_2
integer*2,parameter::g=-32768_2
integer*4,parameter::j=2147483647_4
integer*4,parameter::k=-2147483648_4
integer*8,parameter::w=9223372036854775807_8
integer*8,parameter::y=-9223372036854775808_8
integer,parameter::m=DSHIFTR(c,d,8)
integer,parameter::n=DSHIFTR(e,g,16)
integer*4,parameter::o=DSHIFTR(j,k,32)
integer*4,parameter::q=DSHIFTR(k,k,32)
integer*8,parameter::p=DSHIFTR(w,y,64)
integer*8,parameter::r=DSHIFTR(w,w,64)
integer,parameter::s=DSHIFTR(g,g,16)
integer,parameter::t=DSHIFTR(c,c,8)
if(m .ne. -128)print*,"100"
if(n .ne. 32767 )print*,"101"
if(o .ne. 2147483647_4 )print*,"102"
if(p .ne. 9223372036854775807_8 )print*,"103"
if(q .ne. -2147483648_4 )print*,"104"
if(r .ne. 9223372036854775807_8 )print*,"105"
if(s .ne. -32768 )print*,"106"
if(t .ne. -128)print*,"107"
print*,"PASS"
end

