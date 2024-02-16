integer*1,parameter::a=1
integer*1,parameter::b=2
integer*1,parameter::c=3
integer*1,parameter::d=4
integer*1,parameter::e=5
integer*1,parameter::f=6
integer*1,parameter::g=7
integer*1,parameter::h=8
integer*1,parameter::i=0
integer*1,parameter::kind1=1
integer,parameter::aa=maskl(a,kind1)
integer,parameter::bb=maskl(b,kind1)
integer,parameter::cc=maskl(c,kind1)
integer,parameter::dd=maskl(d,kind1)
integer,parameter::ee=maskl(e,kind1)
integer,parameter::ff=maskl(f,kind1)
integer,parameter::gg=maskl(g,kind1)
integer,parameter::hh=maskl(h,kind1)
integer,parameter::ii=maskl(i,kind1)
if(aa .ne.-128)print*,"100"
if(bb .ne.-64)print*,"101"
if(cc .ne.-32)print*,"102"
if(dd .ne.-16)print*,"103"
if(ee .ne.-8)print*,"104"
if(ff .ne.-4)print*,"105"
if(gg .ne.-2)print*,"106"
if(hh .ne.-1)print*,"107"
if(ii .ne.0)print*,"108"
print*,"PASS"
end

