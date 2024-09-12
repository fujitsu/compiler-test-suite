integer*1,parameter::a(3)=[123_1,122_1,119_1]
integer*2,parameter::b(3)=[1234_2,1233_2,1432_2]
integer*4,parameter::c(3)=[12354_4,12344_4,1254_4]
integer*8,parameter::d(3)=[123654_8,1234532_8,12345566_8]
real*4,parameter::e(3)=[2.3,4.3,6.4]
real*8,parameter::f(3)=[2.34,4.54,6.54]
real*16,parameter::g(3)=[2.345,245.6,654.4]
character*1,parameter::h(3)=['a','b','c']
character*4,parameter::i(3)=['f','g','h']
logical*1,parameter::j(3)=[.true.,.false.,.true.]
logical*2,parameter::k(3)=[.true.,.false.,.false.]
logical*4,parameter::l(3)=[.true.,.false.,.true.]
logical*8,parameter::m(3)=[.true.,.false.,.true.]
complex*8,parameter::n(2)=(3.0,4.0)
complex*16,parameter::o(2)=(2.1,4.2)
complex*32,parameter::p(2)=(3.3,5.4)

type ty 
integer::a
end type
type(ty)::q(2)=ty(3)

integer,parameter::x1= kind(rank(a))
integer,parameter::x2= kind(rank(b))
integer,parameter::x3= kind(rank(c))
integer,parameter::x4= kind(rank(d))

integer,parameter::y1= kind(rank(e))
integer,parameter::y2= kind(rank(f))
integer,parameter::y3= kind(rank(g))

integer,parameter::z1= kind(rank(h))
integer,parameter::z2= kind(rank(i))

integer,parameter::a1= kind(rank(j))
integer,parameter::a2= kind(rank(k))
integer,parameter::a3= kind(rank(l))
integer,parameter::a4= kind(rank(m))

integer,parameter::b1= kind(rank(n))
integer,parameter::b2= kind(rank(o))
integer,parameter::b3= kind(rank(p))


integer,parameter::d1= kind(rank(q))
integer::e1

if(((x1 .ne. kind(rank(a))).and.(x1 .ne. kind(kind(e1)))))print*,"100"
if(((x2 .ne. kind(rank(b))).and.(x2 .ne. kind(kind(e1)))))print*,"101"
if(((x3 .ne. kind(rank(c))).and.(x3 .ne. kind(kind(e1)))))print*,"102"
if(((x4 .ne. kind(rank(d))).and.(x4 .ne. kind(kind(e1)))))print*,"103"

if(((y1 .ne. kind(rank(e))).and.(y1 .ne. kind(kind(e1)))))print*,"104"
if(((y2 .ne. kind(rank(f))).and.(y2 .ne. kind(kind(e1)))))print*,"105"
if(((y3 .ne. kind(rank(g))).and.(y3 .ne. kind(kind(e1)))))print*,"106"

if(((z1 .ne. kind(rank(h))).and.(z1 .ne. kind(kind(e1)))))print*,"107"
if(((z2 .ne. kind(rank(i))).and.(z2 .ne. kind(kind(e1)))))print*,"108"

if(((a1 .ne. kind(rank(j))).and.(a1 .ne. kind(kind(e1)))))print*,"109"
if(((a2 .ne. kind(rank(k))).and.(a2 .ne. kind(kind(e1)))))print*,"110"
if(((a3 .ne. kind(rank(l))).and.(a3 .ne. kind(kind(e1)))))print*,"111"
if(((a4 .ne. kind(rank(m))).and.(a4 .ne. kind(kind(e1)))))print*,"112"

if(((b1 .ne. kind(rank(n))).and.(b1 .ne. kind(kind(e1)))))print*,"113"
if(((b2 .ne. kind(rank(o))).and.(b2 .ne. kind(kind(e1)))))print*,"114"
if(((b3 .ne. kind(rank(p))).and.(b3 .ne. kind(kind(e1)))))print*,"115"

if(((d1 .ne. kind(rank(q))).and.(d1 .ne. kind(kind(e1)))))print*,"119"
print*,"PASS"
end
