integer*1,parameter::a(3)=[127_1,126_1,125_1]
integer*1,parameter::b(3)=[124_1,127_1,125_1]
integer*1,parameter::c(3)=[-128_1,-127_1,-126_1]
integer*1,parameter::d(3)=[-127_1,-128_1,-126_1]
integer*2,parameter::e(3)=[32767_2,32766_2,32765_2]
integer*2,parameter::f(3)=[32766_2,32767_2,32765_2]
integer*2,parameter::g(3)=[-32768_2,-32767_2,-32765_2]
integer*2,parameter::h(3)=[-32767_2,-32768_2,-32765_2]
integer*4,parameter::i(3)=[2147483647_4,2147483646_4,2147483645_4]
integer*4,parameter::j(3)=[2147483646_4,2147483647_4,2147483645_4]
integer*4,parameter::k(3)=[-2147483648_4,-2147483647_4,-2147483648_4]
integer*4,parameter::l(3)=[-2147483647_4,-2147483648_4,-2147483648_4]
integer*8,parameter::ii(3)=[9223372036854775807_8,9223372036854775806_8,9223372036854775805_8]
integer*8,parameter::jj(3)=[9223372036854775806_8,9223372036854775807_8,9223372036854775805_8]
integer*8,parameter::kk(3)=[-9223372036854775808_8,-9223372036854775807_8,-9223372036854775806_8]
integer*8,parameter::ll(3)=[-9223372036854775807_8,-9223372036854775808_8,-9223372036854775806_8]
integer,parameter::m(3)=DSHIFTR(a,b,8)
integer,parameter::n(3)=DSHIFTR(c,d,7)
integer,parameter::o(3)=DSHIFTR(e,f,15)
integer,parameter::p(3)=DSHIFTR(g,h,16)
integer*4,parameter::q(3)=DSHIFTR(i,j,32)
integer*4,parameter::r(3)=DSHIFTR(k,l,31)
integer*8,parameter::s(3)=DSHIFTR(ii,jj,63)
integer*8,parameter::t(3)=DSHIFTR(kk,ll,64)
if( any(m .ne. [127, 126, 125]))print*,"100"
if( any(n .ne. [ 1 ,3, 5] ))print*,"102"
if( any(o .ne. [-2 ,-4, -6]))print*,"103"
if( any(p .ne. [-32768_4 ,-32767_4, -32765_4]))print*,"104"
if( any(q .ne. [2147483647 ,2147483646, 2147483645]))print*,"105"
if( any(r .ne. [1,3,1]))print*,"106"
if( any(s .ne.[-2,-4,-6]))print*,"107"
if( any(t .ne.[ -9223372036854775808_8, -9223372036854775807_8 ,-9223372036854775806_8]))print*,"108"
print*,"PASS"
end

