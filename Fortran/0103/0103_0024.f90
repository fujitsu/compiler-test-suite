integer*1,parameter::a(4)=[2,-3,-0,9]
integer*1,parameter::b(4)=[2,3,-0,-19]
integer*2,parameter::c(4)=[-1,-5,-3,-32767]
integer*2,parameter::d(4)=[-0,87,34,22]
integer*4,parameter::e(4)=[2,-3,-0,9]
integer*4,parameter::f(4)=[2,3,-0,-19]
integer*8,parameter::g(4)=[-2,-31,-0,900]
integer*8,parameter::h(4)=[2,-3,-0,-1]
integer,parameter::m(4)=DSHIFTL(a,b,6)
integer,parameter::n(4)=DSHIFTL(c,d,14)
integer*4,parameter::o(4)=DSHIFTL(e,f,31)
integer*8,parameter::p(4)=DSHIFTL(g,h,60)
if( any(m .ne. [-128,64,0,123]))print*,"100"
if( any(n .ne. [-16384,-16363,16392,16389]))print*,"102"
if( any(o .ne. [1_4,-2147483647_4,0_4,-10_4]))print*,"103"
if( any(p .ne. [-2305843009213693952_8,2305843009213693951_8,0_8,5764607523034234879_8]))print*,"104"
print*,"PASS"
end

