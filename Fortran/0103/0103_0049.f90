integer*1,parameter::a(4)=[2,-3,-0,9]
integer*1,parameter::b(4)=[2,3,-0,-19]
integer*2,parameter::c(4)=[-1,-5,-3,-32767]
integer*2,parameter::d(4)=[-0,87,34,22]
integer*4,parameter::e(4)=[2,-3,-0,9]
integer*4,parameter::f(4)=[2,3,-0,-19]
integer*8,parameter::g(4)=[-2,-31,-0,900]
integer*8,parameter::h(4)=[2,-3,-0,-1]
integer,parameter::m(4)=DSHIFTR(a,b,6)
integer,parameter::n(4)=DSHIFTR(c,d,14)
integer,parameter::o(4)=DSHIFTR(e,f,31)
integer*8,parameter::p(4)=DSHIFTR(g,h,60)
if( any(m .ne. [8 ,-12, 0, 39]))print*,"100"
if( any(n .ne. [-4 ,-20 ,-12, 4]))print*,"102"
if( any(o .ne. [4 ,-6 ,0 ,19]))print*,"103"
if( any(p .ne. [-32, -481 ,0 ,14415]))print*,"104"
print*,"PASS"
end

