integer*4,parameter::a=2147483647_4
integer*4,parameter::b=2147483646_4
integer*4,parameter::c=-2147483647_4
integer*4,parameter::d=-2147483646_4
integer*8,parameter::e=9223372036854775807_8
integer*8,parameter::f=9223372036854775806_8
integer*8,parameter::g=-9223372036854775808_8
integer*8,parameter::h=-9223372036854775807_8

logical,parameter::i=bge(2147483648_4,9223372036854775807_8)
logical,parameter::j=bge(32768_2,2147483647_4)
logical,parameter::m=bge(a,e)
logical,parameter::n=bge(f,b)
logical,parameter::o=bge(c,g)
logical,parameter::p=bge(h,d)

logical::m1,n1,o1,p1,q1,r1
m1=bge(a,e)
n1=bge(f,b)
o1=bge(c,g)
p1=bge(h,d)
q1=bge(2147483648_4,9223372036854775807_8)
r1=bge(32768_2,2147483647_4)

if((m .neqv. m1) .and. (m .neqv. .false.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .true.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .true.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .false.))print*,"103"
if((i .neqv. q1) .and. (i .neqv. .false.))print*,"104"
if((j .neqv. r1) .and. (j .neqv. .false.))print*,"105"
print*,"PASS"
end
