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
logical,parameter::m=bgt(a,e)
logical,parameter::n=bgt(f,b)
logical,parameter::o=bgt(c,g)
logical,parameter::p=bgt(h,d)
logical,parameter::q=bgt(a,i)
logical,parameter::r=bgt(j,b)
logical,parameter::s=bgt(c,k)
logical,parameter::t=bgt(l,d)
logical,parameter::u=bgt(a,w)
logical,parameter::v=bgt(x,b)
logical,parameter::uu=bgt(y,c)
logical,parameter::vv=bgt(d,z)
logical::m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,uu1,vv1
m1=bgt(a,e)
n1=bgt(f,b)
o1=bgt(c,g)
p1=bgt(h,d)
q1=bgt(a,i)
r1=bgt(j,b)
s1=bgt(c,k)
t1=bgt(l,d)
u1=bgt(a,w)
v1=bgt(x,b)
uu1=bgt(y,c)
vv1=bgt(d,z)
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
