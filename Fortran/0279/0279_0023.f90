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
integer,parameter::aa=poppar(a)
integer,parameter::bb=poppar(b)
integer,parameter::cc=poppar(c)
integer,parameter::dd=poppar(d)
integer,parameter::ee=poppar(e)
integer,parameter::ff=poppar(f)
integer,parameter::gg=poppar(g)
integer,parameter::hh=poppar(h)
integer,parameter::ii=poppar(i)
end module
use m
if(aa .ne.1)print*,"100"
if(bb .ne.1)print*,"101"
if(cc .ne.0)print*,"102"
if(dd .ne.1)print*,"103"
if(ee .ne.0)print*,"104"
if(ff .ne.0)print*,"105"
if(gg .ne.1)print*,"106"
if(hh .ne.1)print*,"107"
if(ii .ne.0)print*,"108"
print*,"PASS"
end

