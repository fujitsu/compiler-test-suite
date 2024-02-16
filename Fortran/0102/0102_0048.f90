integer*4,parameter::a=2147483647_4
integer*4,parameter::b=2147483646_4
integer*4,parameter::c=-2147483647_4
integer*4,parameter::d=-2147483646_4
integer*8,parameter::e=9223372036854775807_8
integer*8,parameter::f=9223372036854775806_8
integer*8,parameter::g=-9223372036854775808_8
integer*8,parameter::h=-9223372036854775807_8
logical,parameter::m=bgt(a,e)
logical,parameter::n=bgt(f,b)
logical,parameter::o=bgt(c,g)
logical,parameter::p=bgt(h,d)
logical::m1,n1,o1,p1
m1=bgt(a,e)
n1=bgt(f,b)
o1=bgt(c,g)
p1=bgt(h,d)
if((m .neqv. m1) .and. (m .neqv. .false.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .true.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .true.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .false.))print*,"103"
print*,"PASS"
end
