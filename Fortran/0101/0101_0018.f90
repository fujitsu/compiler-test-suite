integer*1,parameter::b=126_1
integer*1,parameter::c=127_1
integer*1,parameter::d=-128_1
integer*2,parameter::e=32766_2
integer*2,parameter::g=32767_2
integer*2,parameter::h=-32768_2
integer*4,parameter::i=-2147483646_4
integer*4,parameter::j=2147483647_4
integer*4,parameter::l=-2147483648_4
integer*8,parameter::w=9223372036854775806_8
integer*8,parameter::x=9223372036854775807_8
integer*8,parameter::z=-9223372036854775808_8
integer,parameter::m=MERGE_BITS(d,c,b)
integer,parameter::n=MERGE_BITS(g,h,e)
integer*4,parameter::o=MERGE_BITS(j,i,l)
integer*8,parameter::p=MERGE_BITS(z,x,w)
if(m .ne.1)print*,"100"
if(n .ne.-2)print*,"101"
if(o .ne.2)print*,"102"
if(p .ne.1 )print*,"103"
print*,"PASS"
end

