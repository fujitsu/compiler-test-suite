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
integer*1,parameter::kind1=1
integer,parameter::aa=maskr(a,kind1)
integer,parameter::bb=maskr(b,kind1)
integer,parameter::cc=maskr(c,kind1)
integer,parameter::dd=maskr(d,kind1)
integer,parameter::ee=maskr(e,kind1)
integer,parameter::ff=maskr(f,kind1)
integer,parameter::gg=maskr(g,kind1)
integer,parameter::hh=maskr(h,kind1)
integer,parameter::ii=maskr(i,kind1)
end module
use m
if(aa .ne.1)print*,"100"
if(bb .ne.3)print*,"101"
if(cc .ne.7)print*,"102"
if(dd .ne.15)print*,"103"
if(ee .ne.31)print*,"104"
if(ff .ne.63)print*,"105"
if(gg .ne.127)print*,"106"
if(hh .ne.-1)print*,"107"
if(ii .ne.0)print*,"108"
print*,"PASS"
end

