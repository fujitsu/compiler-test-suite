integer*2,parameter::a=32767_2
integer*2,parameter::b=32766_2
integer*2,parameter::c=-32768_2
integer*2,parameter::d=-32767_2
integer*4,parameter::e=2147483647_4
integer*4,parameter::f=2147483646_4
integer*4,parameter::g=-2147483647_4
integer*4,parameter::h=-2147483646_4
integer*8,parameter::i=9223372036854775807_8
integer*8,parameter::j=9223372036854775806_8
integer*8,parameter::k=-9223372036854775808_8
integer*8,parameter::l=-9223372036854775807_8
logical,parameter::m=BLT(a,e)
logical,parameter::n=BLT(f,b)
logical,parameter::o=BLT(c,g)
logical,parameter::p=BLT(h,d)
logical,parameter::q=BLT(a,i)
logical,parameter::r=BLT(j,b)
logical,parameter::s=BLT(c,k)
logical,parameter::t=BLT(l,d)
logical::m1,n1,o1,p1,q1,r1,s1,t1
m1=BLT(a,e)
n1=BLT(f,b)
o1=BLT(c,g)
p1=BLT(h,d)
q1=BLT(a,i)
r1=BLT(j,b)
s1=BLT(c,k)
t1=BLT(l,d)
if((m .neqv. m1) .and. (m .neqv. .true.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .false.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .false.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .true.))print*,"103"
if((q .neqv. q1) .and. (q .neqv. .true.))print*,"104"
if((r .neqv. r1) .and. (r .neqv. .false.))print*,"105"
if((s .neqv. s1) .and. (s .neqv. .false.))print*,"106"
if((t .neqv. t1) .and. (t .neqv. .true.))print*,"107"
print*,"PASS"
end
