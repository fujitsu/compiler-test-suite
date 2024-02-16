integer*1,parameter::a=127_1
integer*1,parameter::b=126_1
integer*1,parameter::c=-128_1
integer*1,parameter::d=-127_1
integer*2,parameter::e=32767_2
integer*2,parameter::f=32766_2
integer*2,parameter::g=-32768_2
integer*2,parameter::h=-32767_2
integer*4,parameter::i=2147483647_4
integer*4,parameter::j=2147483646_4
integer*4,parameter::k=-2147483647_4
integer*4,parameter::l=-2147483646_4
integer*8,parameter::w=9223372036854775807_8
integer*8,parameter::x=9223372036854775806_8
integer*8,parameter::y=-9223372036854775808_8
integer*8,parameter::z=-9223372036854775807_8
logical,parameter::m=BLT(a,b)
logical,parameter::n=BLT(c,d)
logical,parameter::o=BLT(e,f)
logical,parameter::p=BLT(g,h)
logical,parameter::q=BLT(i,j)
logical,parameter::r=BLT(k,l)
logical,parameter::s=BLT(w,x)
logical,parameter::t=BLT(y,z)
logical::m1,n1,o1,p1,q1,r1,s1,t1
m1=BLT(a,b)
n1=BLT(c,d)
o1=BLT(e,f)
p1=BLT(g,h)
q1=BLT(i,j)
r1=BLT(k,l)
s1=BLT(w,x)
t1=BLT(y,z)
if((m .neqv. m1) .and. (m .neqv. .false.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .true.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .false.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .true.))print*,"103"
if((q .neqv. q1) .and. (q .neqv. .false.))print*,"104"
if((r .neqv. r1) .and. (r .neqv. .true.))print*,"105"
if((s .neqv. s1) .and. (s .neqv. .false.))print*,"106"
if((t .neqv. t1) .and. (t .neqv. .true.))print*,"107"
print*,"PASS"
end
