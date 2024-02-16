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
logical,parameter::m=bge(a,e)
logical,parameter::n=bge(f,b)
logical,parameter::o=bge(c,g)
logical,parameter::p=bge(h,d)
logical,parameter::q=bge(a,i)
logical,parameter::r=bge(j,b)
logical,parameter::s=bge(c,k)
logical,parameter::t=bge(l,d)
logical::m1,n1,o1,p1,q1,r1,s1,t1
m1=bge(a,e)
n1=bge(f,b)
o1=bge(c,g)
p1=bge(h,d)
q1=bge(a,i)
r1=bge(j,b)
s1=bge(c,k)
t1=bge(l,d)
if((m .neqv. m1) .and. (m .neqv. .false.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .true.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .true.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .false.))print*,"103"
if((q .neqv. q1) .and. (q .neqv. .false.))print*,"104"
if((r .neqv. r1) .and. (r .neqv. .true.))print*,"105"
if((s .neqv. s1) .and. (s .neqv. .true.))print*,"106"
if((t .neqv. t1) .and. (t .neqv. .false.))print*,"107"
print*,"PASS"
end
