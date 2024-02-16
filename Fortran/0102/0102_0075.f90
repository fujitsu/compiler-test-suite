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
logical,parameter::m(3)=BLE(a,b)
logical,parameter::n(3)=BLE(c,d)
logical,parameter::o(3)=BLE(e,f)
logical,parameter::p(3)=BLE(g,h)
logical,parameter::q(3)=BLE(i,j)
logical,parameter::r(3)=BLE(k,l)
logical,parameter::s(3)=BLE(a,c)
logical,parameter::t(3)=BLE(c,a)
logical,parameter::u(3)=BLE(e,g)
logical,parameter::v(3)=BLE(g,e)
logical,parameter::w(3)=BLE(i,k)
logical,parameter::x(3)=BLE(k,i)
logical,parameter::y(3)=BLE(ii,jj)
logical,parameter::z(3)=BLE(kk,ll)
logical,parameter::yy(3)=BLE(ii,kk)
logical,parameter::zz(3)=BLE(kk,ii)
if((any(m .neqv. [.false.,.true.,.true.])))print*,"100"
if((any(n .neqv. [.true.,.false.,.true.])))print*,"101"
if((any(o .neqv. [.false.,.true.,.true.])))print*,"102"
if((any(p .neqv. [.true.,.false.,.true.])))print*,"103"
if((any(q .neqv. [.false.,.true.,.true.])))print*,"104"
if((any(r .neqv. [.true.,.false.,.true.])))print*,"105"
if((any(s .neqv. [.true.,.true.,.true.])))print*,"106"
if((any(t .neqv. [.false.,.false.,.false.])))print*,"107"
if((any(u .neqv. [.true.,.true.,.true.])))print*,"108"
if((any(v .neqv. [.false.,.false.,.false.])))print*,"109"
if((any(w .neqv. [.true.,.true.,.true.])))print*,"110"
if((any(x .neqv. [.false.,.false.,.false.])))print*,"111"
if((any(y .neqv. [.false.,.true.,.true.])))print*,"112"
if((any(z .neqv. [.true.,.false.,.true.])))print*,"113"
if((any(yy .neqv. [.true.,.true.,.true.])))print*,"114"
if((any(zz.neqv. [.false.,.false.,.false.])))print*,"115"
print*,"PASS"
end  
