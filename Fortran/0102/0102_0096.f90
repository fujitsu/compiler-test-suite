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
logical,parameter::m=BLT(a,e)
logical,parameter::n=BLT(f,b)
logical,parameter::o=BLT(c,g)
logical,parameter::p=BLT(h,d)
logical,parameter::q=BLT(a,i)
logical,parameter::r=BLT(j,b)
logical,parameter::s=BLT(c,k)
logical,parameter::t=BLT(l,d)
logical,parameter::u=BLT(a,w)
logical,parameter::v=BLT(x,b)
logical,parameter::uu=BLT(y,c)
logical,parameter::vv=BLT(d,z)
logical::m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,uu1,vv1
m1=BLT(a,e)
n1=BLT(f,b)
o1=BLT(c,g)
p1=BLT(h,d)
q1=BLT(a,i)
r1=BLT(j,b)
s1=BLT(c,k)
t1=BLT(l,d)
u1=BLT(a,w)
v1=BLT(x,b)
uu1=BLT(y,c)
vv1=BLT(d,z)
if((m .neqv. m1) .and. (m .neqv. .true.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .false.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .false.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .true.))print*,"103"
if((q .neqv. q1) .and. (q .neqv. .true.))print*,"104"
if((r .neqv. r1) .and. (r .neqv. .false.))print*,"105"
if((s .neqv. s1) .and. (s .neqv. .false.))print*,"106"
if((t .neqv. t1) .and. (t .neqv. .true.))print*,"107"
if((u .neqv. u1) .and. (u .neqv. .true.))print*,"108"
if((v .neqv. v1) .and. (v .neqv. .false.))print*,"109"
if((uu .neqv. uu1) .and. (uu .neqv. .true.))print*,"110"
if((vv .neqv. vv1) .and. (vv .neqv. .false.))print*,"111"
print*,"PASS"
end
