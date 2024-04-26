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
integer,parameter::aa=LEADZ(a)
integer,parameter::bb=LEADZ(b)
integer,parameter::cc=LEADZ(c)
integer,parameter::dd=LEADZ(d)
integer,parameter::ee=LEADZ(e)
integer,parameter::ff=LEADZ(f)
integer,parameter::gg=LEADZ(g)
integer,parameter::hh=LEADZ(h)
integer,parameter::ii=LEADZ(i)
end module
use m
if(aa .ne.63)print*,"100"
if(bb .ne.62)print*,"101"
if(cc .ne.62)print*,"102"
if(dd .ne.61)print*,"103"
if(ee .ne.61)print*,"104"
if(ff .ne.61)print*,"105"
if(gg .ne.61)print*,"106"
if(hh .ne.60)print*,"107"
if(ii .ne.64)print*,"108"
print*,"PASS"
end
