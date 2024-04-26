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
integer,parameter::aa=TRAILZ(a)
integer,parameter::bb=TRAILZ(b)
integer,parameter::cc=TRAILZ(c)
integer,parameter::dd=TRAILZ(d)
integer,parameter::ee=TRAILZ(e)
integer,parameter::ff=TRAILZ(f)
integer,parameter::gg=TRAILZ(g)
integer,parameter::hh=TRAILZ(h)
integer,parameter::ii=TRAILZ(i)
end module
use m
if(aa .ne.0)print*,"100"
if(bb .ne.1)print*,"101"
if(cc .ne.0)print*,"102"
if(dd .ne.2)print*,"103"
if(ee .ne.0)print*,"104"
if(ff .ne.1)print*,"105"
if(gg .ne.0)print*,"106"
if(hh .ne.3)print*,"107"
if(ii .ne.64)print*,"108"
print*,"PASS"
end
