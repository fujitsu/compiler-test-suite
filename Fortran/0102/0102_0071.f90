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
logical,parameter::m=BLE(a,e)
logical,parameter::n=BLE(f,b)
logical,parameter::o=BLE(c,g)
logical,parameter::p=BLE(h,d)
logical,parameter::q=BLE(a,i)
logical,parameter::r=BLE(j,b)
logical,parameter::s=BLE(c,k)
logical,parameter::t=BLE(l,d)
logical,parameter::u=BLE(a,w)
logical,parameter::v=BLE(x,b)
logical,parameter::uu=BLE(y,c)
logical,parameter::vv=BLE(d,z)
logical::m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,uu1,vv1
m1=BLE(a,e)
n1=BLE(f,b)
o1=BLE(c,g)
p1=BLE(h,d)
q1=BLE(a,i)
r1=BLE(j,b)
s1=BLE(c,k)
t1=BLE(l,d)
u1=BLE(a,w)
v1=BLE(x,b)
uu1=BLE(y,c)
vv1=BLE(d,z)
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
