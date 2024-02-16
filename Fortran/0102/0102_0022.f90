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
logical,parameter::m=bge(a,e)
logical,parameter::n=bge(f,b)
logical,parameter::o=bge(c,g)
logical,parameter::p=bge(h,d)
logical,parameter::q=bge(a,i)
logical,parameter::r=bge(j,b)
logical,parameter::s=bge(c,k)
logical,parameter::t=bge(l,d)
logical,parameter::u=bge(a,w)
logical,parameter::v=bge(x,b)
logical,parameter::uu=bge(y,c)
logical,parameter::vv=bge(d,z)
logical::m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,uu1,vv1
m1=bge(a,e)
n1=bge(f,b)
o1=bge(c,g)
p1=bge(h,d)
q1=bge(a,i)
r1=bge(j,b)
s1=bge(c,k)
t1=bge(l,d)
u1=bge(a,w)
v1=bge(x,b)
uu1=bge(y,c)
vv1=bge(d,z)
if((m .neqv. m1) .and. (m .neqv. .false.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .true.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .true.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .false.))print*,"103"
if((q .neqv. q1) .and. (q .neqv. .false.))print*,"104"
if((r .neqv. r1) .and. (r .neqv. .true.))print*,"105"
if((s .neqv. s1) .and. (s .neqv. .true.))print*,"106"
if((t .neqv. t1) .and. (t .neqv. .false.))print*,"107"
if((u .neqv. u1) .and. (u .neqv. .false.))print*,"108"
if((v .neqv. v1) .and. (v .neqv. .true.))print*,"109"
if((uu .neqv. uu1).and.(uu .neqv. .false.))print*,"110"
if((vv .neqv. vv1).and.(vv .neqv. .true.))print*,"111"
print*,"PASS"
end
