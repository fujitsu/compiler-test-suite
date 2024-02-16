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
logical,parameter::m(3)=bgt(a,b)
logical,parameter::n(3)=bgt(c,d)
logical,parameter::o(3)=bgt(e,f)
logical,parameter::p(3)=bgt(g,h)
logical,parameter::q(3)=bgt(i,j)
logical,parameter::r(3)=bgt(k,l)
logical,parameter::s(3)=bgt(a,c)
logical,parameter::t(3)=bgt(c,a)
logical,parameter::u(3)=bgt(e,g)
logical,parameter::v(3)=bgt(g,e)
logical,parameter::w(3)=bgt(i,k)
logical,parameter::x(3)=bgt(k,i)
logical,parameter::y(3)=bgt(ii,jj)
logical,parameter::z(3)=bgt(kk,ll)
logical,parameter::yy(3)=bgt(ii,kk)
logical,parameter::zz(3)=bgt(kk,ii)

logical::m1(3),n1(3),o1(3),p1(3),q1(3),r1(3),s1(3),t1(3),u1(3),v1(3),w1(3),x1(3),y1(3),z1(3),yy1(3),zz1(3)
m1=bgt(a,b)
n1=bgt(c,d)
o1=bgt(e,f)
p1=bgt(g,h)
q1=bgt(i,j)
r1=bgt(k,l)
s1=bgt(a,c)
t1=bgt(c,a)
u1=bgt(e,g)
v1=bgt(g,e)
w1=bgt(i,k)
x1=bgt(k,i)
y1=bgt(ii,jj)
z1=bgt(kk,ll)
yy1=bgt(ii,kk)
zz1=bgt(kk,ii)
if( any(m .neqv. m1))print*,"100" 
if( any(n .neqv. n1))print*,"101" 
if( any(o .neqv. o1))print*,"102" 
if( any(p .neqv. p1))print*,"103" 
if( any(q .neqv. q1))print*,"104" 
if( any(r .neqv. r1))print*,"105" 
if( any(s .neqv. s1))print*,"106" 
if( any(t .neqv. t1))print*,"107" 
if( any(u .neqv. u1))print*,"108" 
if( any(v .neqv. v1))print*,"109" 
if( any(w .neqv. w1))print*,"110" 
if( any(x .neqv. x1))print*,"111" 
if( any(y .neqv. y1))print*,"112" 
if( any(z .neqv. z1))print*,"113" 
if( any(yy .neqv. yy1))print*,"114" 
if( any(zz .neqv. zz1))print*,"115" 

print*,"PASS"
end  
