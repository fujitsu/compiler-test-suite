module mod1
type st1
 integer  e1
end type
type tt1
 integer  e1
 integer  e2
 integer  e3
 integer  e4
end type
type ut1
 integer  e1
 integer  e2
 integer  e3
 integer  e4
 integer  e5
end type
integer,parameter::z=1
contains
subroutine s(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1)
logical(1),value::a1
logical(2),value::b1
logical(4),value::c1
logical(8),value::d1
integer(1),value::e1
integer(2),value::f1
integer(4),value::g1
integer(8),value::h1
real(4),value::i1
real(8),value::j1
real(16),value::k1
complex(4),value::l1
complex(8),value::m1
complex(16),value::n1
character(1),value::o1
character(2),value::p1
character(kind=z,len=1),value::q1
character(kind=z,len=2),value::r1
type(st1),value::s1
type(tt1),value::t1
type(ut1),value::u1
if (.not.a1)print *,'fail'
if (.not.b1)print *,'fail'
if (.not.c1)print *,'fail'
if (.not.d1)print *,'fail'
if (e1/=100)print *,'fail'
if (f1/=100)print *,'fail'
if (g1/=100)print *,'fail'
if (h1/=100)print *,'fail'
if (abs(i1-100)>0.001)print *,'fail'
if (abs(j1-100)>0.001)print *,'fail'
if (abs(k1-100)>0.001)print *,'fail'
if (abs(l1-(100,100))>0.001)print *,'fail'
if (abs(m1-(100,100))>0.001)print *,'fail'
if (abs(n1-(100,100))>0.001)print *,'fail'
if (o1/='1')print *,'fail'
if (p1/='12')print *,'fail'
if (q1/=z_'1')print *,'fail'
if (r1/=z_'12')print *,'fail'
if (s1%e1/=100)print *,'fail'
if (t1%e1/=100)print *,'fail'
if (t1%e2/=100)print *,'fail'
if (t1%e3/=100)print *,'fail'
if (t1%e4/=100)print *,'fail'
if (u1%e1/=100)print *,'fail'
if (u1%e2/=100)print *,'fail'
if (u1%e3/=100)print *,'fail'
if (u1%e4/=100)print *,'fail'
if (u1%e5/=100)print *,'fail'
a1=.false.
b1=.false.
c1=.false.
d1=.false.
e1=2
f1=200
g1=200
h1=200
i1=200
j1=200
k1=200
l1=(200,200)
m1=(200,200)
n1=(200,200)
o1='a'
p1='ab'
q1=z_'a'
r1=z_'ab'
s1=st1(200)
t1=tt1(200,200,200,200)
u1=ut1(200,200,200,200,200)
end subroutine 
end
use mod1
logical(1)::a1
logical(2)::b1
logical(4)::c1
logical(8)::d1
integer(1)::e1
integer(2)::f1
integer(4)::g1
integer(8)::h1
real(4)::i1
real(8)::j1
real(16)::k1
complex(4)::l1
complex(8)::m1
complex(16)::n1
character(1)::o1
character(2)::p1
character(kind=z,len=1)::q1
character(kind=z,len=2)::r1
type(st1)::s1
type(tt1)::t1
type(ut1)::u1
a1=.true.
b1=.true.
c1=.true.
d1=.true.
e1=100
f1=100
g1=100
h1=100
i1=100
j1=100
k1=100
l1=(100,100)
m1=(100,100)
n1=(100,100)
o1='1'
p1='12'
q1=z_'1'
r1=z_'12'
s1=st1(100)
t1=tt1(100,100,100,100)
u1=ut1(100,100,100,100,100)
call s(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1)
if (.not.a1)print *,'fail'
if (.not.b1)print *,'fail'
if (.not.c1)print *,'fail'
if (.not.d1)print *,'fail'
if (e1/=100)print *,'fail'
if (f1/=100)print *,'fail'
if (g1/=100)print *,'fail'
if (h1/=100)print *,'fail'
if (abs(i1-100)>0.001)print *,'fail'
if (abs(j1-100)>0.001)print *,'fail'
if (abs(k1-100)>0.001)print *,'fail'
if (abs(l1-(100,100))>0.001)print *,'fail'
if (abs(m1-(100,100))>0.001)print *,'fail'
if (abs(n1-(100,100))>0.001)print *,'fail'
if (o1/='1')print *,'fail'
if (p1/='12')print *,'fail'
if (q1/=z_'1')print *,'fail'
if (r1/=z_'12')print *,'fail'
if (s1%e1/=100)print *,'fail'
if (t1%e1/=100)print *,'fail'
if (t1%e2/=100)print *,'fail'
if (t1%e3/=100)print *,'fail'
if (t1%e4/=100)print *,'fail'
if (u1%e1/=100)print *,'fail'
if (u1%e2/=100)print *,'fail'
if (u1%e3/=100)print *,'fail'
if (u1%e4/=100)print *,'fail'
if (u1%e5/=100)print *,'fail'
print *,'pass'
end
