integer*1,parameter::a=127
integer*2,parameter::b=127
integer*4,parameter::c=127
integer*8,parameter::d=127
integer*1,parameter::e=-128
integer*2,parameter::f=-128
integer*4,parameter::g=-128
integer*8,parameter::h=-128
logical,parameter::m=bge(a,b)
logical,parameter::n=bge(a,c)
logical,parameter::o=bge(a,d)
logical,parameter::p=bge(b,c)
logical,parameter::q=bge(b,d)
logical,parameter::r=bge(c,d)
logical,parameter::s=bge(e,f)
logical,parameter::t=bge(e,g)
logical,parameter::u=bge(e,h)
logical,parameter::v=bge(f,g)
logical,parameter::w=bge(f,h)
logical,parameter::x=bge(g,h)
logical::m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,w1,x1
m1=bge(a,b)
n1=bge(a,c)
o1=bge(a,d)
p1=bge(b,c)
q1=bge(b,d)
r1=bge(c,d)
s1=bge(e,f)
t1=bge(e,g)
u1=bge(e,h)
v1=bge(f,g)
w1=bge(f,h)
x1=bge(g,h)

if((m .neqv. m1) .and. (m .neqv. .true.))print*,"100"
if((n .neqv. n1) .and. (n .neqv. .true.))print*,"101"
if((o .neqv. o1) .and. (o .neqv. .true.))print*,"102"
if((p .neqv. p1) .and. (p .neqv. .true.))print*,"103"
if((q .neqv. q1) .and. (q .neqv. .true.))print*,"104"
if((r .neqv. r1) .and. (r .neqv. .true.))print*,"105"
if((s .neqv. s1) .and. (s .neqv. .true.))print*,"106"
if((t .neqv. t1) .and. (t .neqv. .true.))print*,"107"
if((u .neqv. u1) .and. (u .neqv. .true.))print*,"108"
if((v .neqv. v1) .and. (v .neqv. .true.))print*,"109"
if((w .neqv. w1) .and. (w .neqv. .true.))print*,"110"
if((x .neqv. x1) .and. (x .neqv. .true.))print*,"111"
print*,"PASS"
end
