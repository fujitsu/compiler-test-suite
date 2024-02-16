integer*1,parameter::a=127_1
integer*1,parameter::b=127_1
integer*1,parameter::c=-128_1
integer*1,parameter::d=-128_1
integer*2,parameter::e=32767_2
integer*2,parameter::f=32767_2
integer*2,parameter::g=-32768_2
integer*2,parameter::h=-32768_2
integer*4,parameter::i=2147483647_4
integer*4,parameter::j=2147483647_4
integer*4,parameter::k=-2147483648_4
integer*4,parameter::l=-2147483648_4
integer*8,parameter::w=9223372036854775807_8
integer*8,parameter::x=9223372036854775807_8
integer*8,parameter::y=-9223372036854775808_8
integer*8,parameter::z=-9223372036854775808_8
logical,parameter::m=bge(a,b)
logical,parameter::n=bge(c,d)
logical,parameter::o=bge(e,f)
logical,parameter::p=bge(g,h)
logical,parameter::q=bge(i,j)
logical,parameter::r=bge(k,l)
logical,parameter::s=bge(w,x)
logical,parameter::t=bge(y,z)
logical::m1,n1,o1,p1,q1,r1,s1,t1
m1=bge(a,b)
n1=bge(c,d)
o1=bge(e,f)
p1=bge(g,h)
q1=bge(i,j)
r1=bge(k,l)
s1=bge(w,x)
t1=bge(y,z)
if((m .neqv. m1) .and. (m .neqv. .true.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .true.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .true.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .true.))print*,"103"
if((q .neqv. q1) .and. (q .neqv. .true.))print*,"104"
if((r .neqv. r1) .and. (r .neqv. .true.))print*,"105"
if((s .neqv. s1) .and. (s .neqv. .true.))print*,"106"
if((t .neqv. t1) .and. (t .neqv. .true.))print*,"107"
print*,"PASS"
end
