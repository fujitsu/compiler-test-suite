module m
integer*8,parameter::a=1
integer*8,parameter::b=2
integer*8,parameter::c=3
integer*8,parameter::d=4
integer*8,parameter::e=5
integer*8,parameter::f=6
integer*8,parameter::g=7
integer*8,parameter::h=8
integer*8,parameter::i=0
integer,parameter::aa=popcnt(a)
integer,parameter::bb=popcnt(b)
integer,parameter::cc=popcnt(c)
integer,parameter::dd=popcnt(d)
integer,parameter::ee=popcnt(e)
integer,parameter::ff=popcnt(f)
integer,parameter::gg=popcnt(g)
integer,parameter::hh=popcnt(h)
integer,parameter::ii=popcnt(i)
end module
use m
if(aa .ne.1)print*,"100"
if(bb .ne.1)print*,"101"
if(cc .ne.2)print*,"102"
if(dd .ne.1)print*,"103"
if(ee .ne.2)print*,"104"
if(ff .ne.2)print*,"105"
if(gg .ne.3)print*,"106"
if(hh .ne.1)print*,"107"
if(ii .ne.0)print*,"108"
print*,"PASS"
end

