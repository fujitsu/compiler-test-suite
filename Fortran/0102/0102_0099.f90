integer*1,parameter::a=127
integer*2,parameter::b=127
integer*4,parameter::c=127
integer*8,parameter::d=127
integer*1,parameter::e=-128
integer*2,parameter::f=-128
integer*4,parameter::g=-128
integer*8,parameter::h=-128
logical,parameter::m=BLT(a,b)
logical,parameter::n=BLT(a,c)
logical,parameter::o=BLT(a,d)
logical,parameter::p=BLT(b,c)
logical,parameter::q=BLT(b,d)
logical,parameter::r=BLT(c,d)
logical,parameter::s=BLT(e,f)
logical,parameter::t=BLT(e,g)
logical,parameter::u=BLT(e,h)
logical,parameter::v=BLT(f,g)
logical,parameter::w=BLT(f,h)
logical,parameter::x=BLT(g,h)
logical::m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,w1,x1
m1=BLT(a,b)
n1=BLT(a,c)
o1=BLT(a,d)
p1=BLT(b,c)
q1=BLT(b,d)
r1=BLT(c,d)
s1=BLT(e,f)
t1=BLT(e,g)
u1=BLT(e,h)
v1=BLT(f,g)
w1=BLT(f,h)
x1=BLT(g,h)
if((m .neqv. m1) .and. (m .neqv. .false.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .false.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .false.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .false.))print*,"103"
if((q .neqv. q1) .and. (q .neqv. .false.))print*,"104"
if((r .neqv. r1) .and. (r .neqv. .false.))print*,"105"
if((s .neqv. s1) .and. (s .neqv. .false.))print*,"106"
if((t .neqv. t1) .and. (t .neqv. .false.))print*,"107"
if((u .neqv. u1) .and. (u .neqv. .false.))print*,"108"
if((v .neqv. v1) .and. (v .neqv. .false.))print*,"109"
if((w .neqv. w1) .and. (w .neqv. .false.))print*,"110"
if((x .neqv. x1) .and. (x .neqv. .false.))print*,"111"
print*,"PASS"
end
