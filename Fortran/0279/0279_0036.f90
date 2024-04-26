integer*1,parameter::a=123
integer*2,parameter::b=1234
integer*4,parameter::c=12354
integer*8,parameter::d=123654
real*4,parameter::e=2.3
real*8,parameter::f=2.34
real*16,parameter::g=2.345
logical*1,parameter::j=.true.
logical*2,parameter::k=.true.
logical*4,parameter::l=.false.
logical*8,parameter::m=.false.
 complex*8,parameter::n=(3.0,4.0)
 complex*16,parameter::o=(2.1,4.2)
 complex*32,parameter::p=(3.3,5.4)
integer,parameter::a1=storage_size(a+b)
integer,parameter::a2=storage_size(b-a)
integer,parameter::a3=storage_size(c*a)
integer,parameter::a4=storage_size(d/a)
integer,parameter::a5=storage_size(e+a)
integer,parameter::a6=storage_size(f-e)
integer,parameter::a7=storage_size(g*e)
integer,parameter::a10=storage_size(j.and.k)
integer,parameter::a11=storage_size(k.or.l)
integer,parameter::a12=storage_size(l.or.m)
integer,parameter::a13=storage_size(m.and.k)
integer,parameter::a14=storage_size(n+o)
integer,parameter::a15=storage_size(o-p)
integer,parameter::a16=storage_size(p+o)
integer,parameter::a18=storage_size(b'10101010'+2)
integer,parameter::a19=storage_size(o'77'+2)
integer,parameter::a20=storage_size(z'ff'+156)
integer::m1
if(a1.ne. storage_size(a+b))print*,"100"
if(a2.ne. storage_size(b-a))print*,"101"
if(a3.ne. storage_size(c*a))print*,"102"
if(a4.ne. storage_size(d/a))print*,"103"
if(a5.ne. storage_size(e+a))print*,"104"
if(a6.ne. storage_size(f-e))print*,"105"
if(a7.ne. storage_size(g*e))print*,"106"
if(a10.ne.storage_size(j.and.k))print*,"107"
if(a11.ne.storage_size(k.or.l))print*,"108"
if(a12.ne.storage_size(l.or.m))print*,"109"
if(a13.ne.storage_size(m.and.k))print*,"110"
if(a14.ne.storage_size(n+o))print*,"111"
if(a15.ne.storage_size(o-p))print*,"112"
if(a16.ne.storage_size(p+o))print*,"113"
if(a18 .ne. bit_size(m1))print*,"117"
if(a19 .ne. bit_size(m1))print*,"118"
if(a20 .ne. bit_size(m1))print*,"119"
print*,"PASS"
end
