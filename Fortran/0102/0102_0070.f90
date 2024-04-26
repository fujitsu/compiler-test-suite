logical,parameter::a=BLE(127_1,126_1)
logical,parameter::b=BLE(-128_1,-127_1)
logical,parameter::c=BLE(32767_2,32766_2)
logical,parameter::d=BLE(-32768_2,-32767_2)
logical,parameter::e=BLE(2147483647_4,2147483646_4)
logical,parameter::f=BLE(-2147483647_4,-2147483646_4)
logical,parameter::g=BLE(9223372036854775807_8,9223372036854775806_8)
logical,parameter::h=BLE(-9223372036854775808_8,-9223372036854775807_8)
logical,parameter::i=BLE(127_1,32767_2)
logical,parameter::j=BLE(127_1,2147483647_4)
logical,parameter::k=BLE(127_1,9223372036854775807_8)
logical,parameter::l=BLE(32767_2,2147483647_4)
logical,parameter::m=BLE(32767_2,9223372036854775807_8)
logical,parameter::n=BLE(2147483647_4,9223372036854775807_8)
logical,parameter::o=BLE(32767_2,127_1)
logical,parameter::p=BLE(2147483647_4,127_1)
logical,parameter::q=BLE(9223372036854775807_8,127_1)
logical,parameter::r=BLE(2147483647_4,32767_2)
logical,parameter::s=BLE(9223372036854775807_8,32767_2)
logical,parameter::t=BLE(9223372036854775807_8,2147483647_4)
logical,parameter::u=BLE(-128_1,-32768_2)
logical,parameter::v=BLE(-128_1,-2147483647_4)
logical,parameter::w=BLE(-128_1,-9223372036854775807_8)
logical,parameter::x=BLE(-32768_2,-2147483647_4)
logical,parameter::y=BLE(-32768_2,-9223372036854775807_8)
logical,parameter::z=BLE(-2147483647_4,-9223372036854775807_8)
logical,parameter::aa=BLE(-32768_2,-128_1)
logical,parameter::bb=BLE(-2147483647_4,-128_1)
logical,parameter::cc=BLE(-9223372036854775807_8,-128_1)
logical,parameter::dd=BLE(-2147483647_4,-32768_2)
logical,parameter::ee=BLE(-9223372036854775807_8,-32768_2)
logical,parameter::ff=BLE(-9223372036854775807_8,-2147483647_4)
logical,parameter::gg=BLE(127_1,-128_1)
logical,parameter::hh=BLE(127_1,-32768_2)
logical,parameter::ii=BLE(127_1,-2147483648_4)
logical,parameter::jj=BLE(127_1,-9223372036854775808_8)
logical,parameter::kk=BLE(32767_2,-128_1)
logical,parameter::ll=BLE(32767_2,-32768_2)
logical,parameter::mm=BLE(32767_2,-2147483648_4)
logical,parameter::nn=BLE(32767_2,-9223372036854775808_8)
logical,parameter::oo=BLE(2147483647_4,-128_1)
logical,parameter::pp=BLE(2147483647_4,-32768_2)
logical,parameter::qq=BLE(2147483647_4,-2147483648_4)
logical,parameter::rr=BLE(2147483647_4,-9223372036854775808_8)
logical,parameter::ss=BLE(9223372036854775807_8,-128_1)
logical,parameter::tt=BLE(9223372036854775807_8,-32768_2)
logical,parameter::uu=BLE(9223372036854775807_8,-2147483648_4)
logical,parameter::vv=BLE(9223372036854775807_8,-9223372036854775808_8)
logical,parameter::ww=BLE(-128_1,127_1)
logical,parameter::xx=BLE(-32768_2,127_1)
logical,parameter::yy=BLE(-2147483648_4,127_1)
logical,parameter::zz=BLE(-9223372036854775808_8,127_1)
logical,parameter::aaa=BLE(-128_1,32767_2)
logical,parameter::bbb=BLE(-32768_2,32767_2)
logical,parameter::ccc=BLE(-2147483648_4,32767_2)
logical,parameter::ddd=BLE(-9223372036854775808_8,32767_2)
logical,parameter::eee=BLE(-128_1,2147483647_4)
logical,parameter::fff=BLE(-32768_2,2147483647_4)
logical,parameter::ggg=BLE(-2147483648_4,2147483647_4)
logical,parameter::hhh=BLE(-9223372036854775808_8,2147483647_4)
logical,parameter::iii=BLE(-128_1,9223372036854775807_8)
logical,parameter::jjj=BLE(-32768_2,9223372036854775807_8)
logical,parameter::kkk=BLE(-2147483648_4,9223372036854775807_8)
logical,parameter::lll=BLE(-9223372036854775808_8,9223372036854775807_8)
logical,parameter::mmm=BLE(127_1,z'7F')
logical,parameter::nnn=BLE(127_1,z'7FFF')
logical,parameter::ooo=BLE(127_1,z'7FFFFFFF')
logical,parameter::ppp=BLE(127_1,z'7FFFFFFFFFFFFFFF')
logical,parameter::qqq=BLE(127_1,o'177')
logical,parameter::rrr=BLE(127_1,o'77777')
logical,parameter::sss=BLE(127_1,o'777777777')
logical,parameter::ttt=BLE(127_1,o'777777777777777777777')
logical,parameter::uuu=BLE(127_1,b'01111111')
logical,parameter::vvv=BLE(127_1,b'0111111111111111')
logical,parameter::www=BLE(127_1,b'01111111111111111111111111111111')
logical,parameter::xxx=BLE(127_1,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::aaaa=BLE(-128_1,z'7F')
logical,parameter::bbbb=BLE(-128_1,z'7FFF')
logical,parameter::cccc=BLE(-128_1,z'7FFFFFFF')
logical,parameter::dddd=BLE(-128_1,z'7FFFFFFFFFFFFFFF')
logical,parameter::eeee=BLE(-128_1,o'177')
logical,parameter::ffff=BLE(-128_1,o'77777')
logical,parameter::gggg=BLE(-128_1,o'777777777')
logical,parameter::hhhh=BLE(-128_1,o'777777777777777777777')
logical,parameter::iiii=BLE(-128_1,b'01111111')
logical,parameter::jjjj=BLE(-128_1,b'0111111111111111')
logical,parameter::kkkk=BLE(-128_1,b'01111111111111111111111111111111')
logical,parameter::llll=BLE(-128_1,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::mmmm=BLE(32767_2,z'7F')
logical,parameter::nnnn=BLE(32767_2,z'7FFF')
logical,parameter::oooo=BLE(32767_2,z'7FFFFFFF')
logical,parameter::pppp=BLE(32767_2,z'7FFFFFFFFFFFFFFF')
logical,parameter::qqqq=BLE(32767_2,o'177')
logical,parameter::rrrr=BLE(32767_2,o'77777')
logical,parameter::ssss=BLE(32767_2,o'777777777')
logical,parameter::tttt=BLE(32767_2,o'777777777777777777777')
logical,parameter::uuuu=BLE(32767_2,b'01111111')
logical,parameter::vvvv=BLE(32767_2,b'0111111111111111')
logical,parameter::wwww=BLE(32767_2,b'01111111111111111111111111111111')
logical,parameter::xxxx=BLE(32767_2,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::yyyy=BLE(-32768_2,z'7F')
logical,parameter::zzzz=BLE(-32768_2,z'7FFF')
logical,parameter::aaaaa=BLE(-32768_2,z'7FFFFFFF')
logical,parameter::bbbbb=BLE(-32768_2,z'7FFFFFFFFFFFFFFF')
logical,parameter::ccccc=BLE(-32768_2,o'177')
logical,parameter::ddddd=BLE(-32768_2,o'77777')
logical,parameter::eeeee=BLE(-32768_2,o'777777777')
logical,parameter::fffff=BLE(-32768_2,o'777777777777777777777')
logical,parameter::ggggg=BLE(-32768_2,b'01111111')
logical,parameter::hhhhh=BLE(-32768_2,b'0111111111111111')
logical,parameter::iiiii=BLE(-32768_2,b'01111111111111111111111111111111')
logical,parameter::jjjjj=BLE(-32768_2,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::kkkkk=BLE(2147483647_4,z'7F')
logical,parameter::lllll=BLE(2147483647_4,z'7FFF')
logical,parameter::mmmmm=BLE(2147483647_4,z'7FFFFFFF')
logical,parameter::nnnnn=BLE(2147483647_4,z'7FFFFFFFFFFFFFFF')
logical,parameter::ooooo=BLE(2147483647_4,o'177')
logical,parameter::ppppp=BLE(2147483647_4,o'77777')
logical,parameter::qqqqq=BLE(2147483647_4,o'777777777')
logical,parameter::rrrrr=BLE(2147483647_4,o'777777777777777777777')
logical,parameter::sssss=BLE(2147483647_4,b'01111111')
logical,parameter::ttttt=BLE(2147483647_4,b'0111111111111111')
logical,parameter::uuuuu=BLE(2147483647_4,b'01111111111111111111111111111111')
logical,parameter::vvvvv=BLE(2147483647_4,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::wwwww=BLE(-2147483648_4,z'7F')
logical,parameter::xxxxx=BLE(-2147483648_4,z'7FFF')
logical,parameter::yyyyy=BLE(-2147483648_4,z'7FFFFFFF')
logical,parameter::zzzzz=BLE(-2147483648_4,z'7FFFFFFFFFFFFFFF')
logical,parameter::aaaaaa=BLE(-2147483648_4,o'177')
logical,parameter::bbbbbb=BLE(-2147483648_4,o'77777')
logical,parameter::cccccc=BLE(-2147483648_4,o'777777777')
logical,parameter::dddddd=BLE(-2147483648_4,o'777777777777777777777')
logical,parameter::eeeeee=BLE(-2147483648_4,b'01111111')
logical,parameter::ffffff=BLE(-2147483648_4,b'0111111111111111')
logical,parameter::gggggg=BLE(-2147483648_4,b'01111111111111111111111111111111')
logical,parameter::hhhhhh=BLE(-2147483648_4,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::iiiiii=BLE(9223372036854775807_8,z'7F')
logical,parameter::jjjjjj=BLE(9223372036854775807_8,z'7FFF')
logical,parameter::kkkkkk=BLE(9223372036854775807_8,z'7FFFFFFF')
logical,parameter::mmmmmm=BLE(9223372036854775807_8,o'177')
logical,parameter::nnnnnn=BLE(9223372036854775807_8,o'77777')
logical,parameter::oooooo=BLE(9223372036854775807_8,o'777777777')
logical,parameter::qqqqqq=BLE(9223372036854775807_8,b'01111111')
logical,parameter::rrrrrr=BLE(9223372036854775807_8,b'0111111111111111')
logical,parameter::ssssss=BLE(9223372036854775807_8,b'01111111111111111111111111111111')
logical,parameter::uuuuuu=BLE(-9223372036854775808_8,z'7F')
logical,parameter::vvvvvv=BLE(-9223372036854775808_8,z'7FFF')
logical,parameter::wwwwww=BLE(-9223372036854775808_8,z'7FFFFFFF')
logical,parameter::yyyyyy=BLE(-9223372036854775808_8,o'177')
logical,parameter::zzzzzz=BLE(-9223372036854775808_8,o'77777')
logical,parameter::aaaaaaa=BLE(-9223372036854775808_8,o'777777777')
logical,parameter::ccccccc=BLE(-9223372036854775808_8,b'01111111')
logical,parameter::ddddddd=BLE(-9223372036854775808_8,b'0111111111111111')
logical,parameter::eeeeeee=BLE(-9223372036854775808_8,b'01111111111111111111111111111111')

logical::a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,w1,x1,y1,z1
logical::aa1,bb1,cc1,dd1,ee1,ff1,gg1,hh1,ii1,jj1,kk1,ll1,mm1,nn1,oo1,pp1,qq1,rr1,ss1,tt1,uu1,vv1,ww1,xx1,yy1,zz1
logical::aaa1,bbb1,ccc1,ddd1,eee1,fff1,ggg1,hhh1,iii1,jjj1,kkk1,lll1,mmm1,nnn1,ooo1,ppp1,qqq1,rrr1,sss1,ttt1,uuu1,vvv1,www1,xxx1
logical::aaaa1,bbbb1,cccc1,dddd1,eeee1,ffff1,gggg1,hhhh1,iiii1,jjjj1,kkkk1,llll1,mmmm1,nnnn1,oooo1,pppp1,qqqq1,rrrr1,ssss1,tttt1,uuuu1,vvvv1,wwww1,xxxx1,yyyy1,zzzz1
logical::aaaaa1,bbbbb1,ccccc1,ddddd1,eeeee1,fffff1,ggggg1,hhhhh1,iiiii1,jjjjj1,kkkkk1,lllll1,nnnnn1,ooooo1,ppppp1,rrrrr1,sssss1,ttttt1,vvvvv1
logical::wwwww1,xxxxx1,zzzzz1
logical::aaaaaa1,bbbbbb1,dddddd1,eeeeee1,ffffff1,hhhhhh1,iiiiii1,jjjjjj1,mmmmmm1,nnnnnn1,qqqqqq1,rrrrrr1
logical::uuuuuu1,vvvvvv1,yyyyyy1,zzzzzz1
logical::ccccccc1,ddddddd1

a1=BLE(127_1,126_1)
b1=BLE(-128_1,-127_1)
c1=BLE(32767_2,32766_2)
d1=BLE(-32768_2,-32767_2)
e1=BLE(2147483647_4,2147483646_4)
f1=BLE(-2147483647_4,-2147483646_4)
g1=BLE(9223372036854775807_8,9223372036854775806_8)
h1=BLE(-9223372036854775808_8,-9223372036854775807_8)
i1=BLE(127_1,32767_2)
j1=BLE(127_1,2147483647_4)
k1=BLE(127_1,9223372036854775807_8)
l1=BLE(32767_2,2147483647_4)
m1=BLE(32767_2,9223372036854775807_8)
n1=BLE(2147483647_4,9223372036854775807_8)
o1=BLE(32767_2,127_1)
p1=BLE(2147483647_4,127_1)
q1=BLE(9223372036854775807_8,127_1)
r1=BLE(2147483647_4,32767_2)
s1=BLE(9223372036854775807_8,32767_2)
t1=BLE(9223372036854775807_8,2147483647_4)
u1=BLE(-128_1,-32768_2)
v1=BLE(-128_1,-2147483647_4)
w1=BLE(-128_1,-9223372036854775807_8)
x1=BLE(-32768_2,-2147483647_4)
y1=BLE(-32768_2,-9223372036854775807_8)
z1=BLE(-2147483647_4,-9223372036854775807_8)
aa1=BLE(-32768_2,-128_1)
bb1=BLE(-2147483647_4,-128_1)
cc1=BLE(-9223372036854775807_8,-128_1)
dd1=BLE(-2147483647_4,-32768_2)
ee1=BLE(-9223372036854775807_8,-32768_2)
ff1=BLE(-9223372036854775807_8,-2147483647_4)
gg1=BLE(127_1,-128_1)
hh1=BLE(127_1,-32768_2)
ii1=BLE(127_1,-2147483648_4)
jj1=BLE(127_1,-9223372036854775808_8)
kk1=BLE(32767_2,-128_1)
ll1=BLE(32767_2,-32768_2)
mm1=BLE(32767_2,-2147483648_4)
nn1=BLE(32767_2,-9223372036854775808_8)
oo1=BLE(2147483647_4,-128_1)
pp1=BLE(2147483647_4,-32768_2)
qq1=BLE(2147483647_4,-2147483648_4)
rr1=BLE(2147483647_4,-9223372036854775808_8)
ss1=BLE(9223372036854775807_8,-128_1)
tt1=BLE(9223372036854775807_8,-32768_2)
uu1=BLE(9223372036854775807_8,-2147483648_4)
vv1=BLE(9223372036854775807_8,-9223372036854775808_8)
ww1=BLE(-128_1,127_1)
xx1=BLE(-32768_2,127_1)
yy1=BLE(-2147483648_4,127_1)
zz1=BLE(-9223372036854775808_8,127_1)
aaa1=BLE(-128_1,32767_2)
bbb1=BLE(-32768_2,32767_2)
ccc1=BLE(-2147483648_4,32767_2)
ddd1=BLE(-9223372036854775808_8,32767_2)
eee1=BLE(-128_1,2147483647_4)
fff1=BLE(-32768_2,2147483647_4)
ggg1=BLE(-2147483648_4,2147483647_4)
hhh1=BLE(-9223372036854775808_8,2147483647_4)
iii1=BLE(-128_1,9223372036854775807_8)
jjj1=BLE(-32768_2,9223372036854775807_8)
kkk1=BLE(-2147483648_4,9223372036854775807_8)
lll1=BLE(-9223372036854775808_8,9223372036854775807_8)
mmm1=BLE(127_1,z'7F')
nnn1=BLE(127_1,z'7FFF')
ooo1=BLE(127_1,z'7FFFFFFF')
ppp1=BLE(127_1,z'7FFFFFFFFFFFFFFF')
qqq1=BLE(127_1,o'177')
rrr1=BLE(127_1,o'77777')
sss1=BLE(127_1,o'777777777')
ttt1=BLE(127_1,o'777777777777777777777')
uuu1=BLE(127_1,b'01111111')
vvv1=BLE(127_1,b'0111111111111111')
www1=BLE(127_1,b'01111111111111111111111111111111')
xxx1=BLE(127_1,b'0111111111111111111111111111111111111111111111111111111111111111')
aaaa1=BLE(-128_1,z'7F')
bbbb1=BLE(-128_1,z'7FFF')
cccc1=BLE(-128_1,z'7FFFFFFF')
dddd1=BLE(-128_1,z'7FFFFFFFFFFFFFFF')
eeee1=BLE(-128_1,o'177')
ffff1=BLE(-128_1,o'77777')
gggg1=BLE(-128_1,o'777777777')
hhhh1=BLE(-128_1,o'777777777777777777777')
iiii1=BLE(-128_1,b'01111111')
jjjj1=BLE(-128_1,b'0111111111111111')
kkkk1=BLE(-128_1,b'01111111111111111111111111111111')
llll1=BLE(-128_1,b'0111111111111111111111111111111111111111111111111111111111111111')
mmmm1=BLE(32767_2,z'7F')
nnnn1=BLE(32767_2,z'7FFF')
oooo1=BLE(32767_2,z'7FFFFFFF')
pppp1=BLE(32767_2,z'7FFFFFFFFFFFFFFF')
qqqq1=BLE(32767_2,o'177')
rrrr1=BLE(32767_2,o'77777')
ssss1=BLE(32767_2,o'777777777')
tttt1=BLE(32767_2,o'777777777777777777777')
uuuu1=BLE(32767_2,b'01111111')
vvvv1=BLE(32767_2,b'0111111111111111')
wwww1=BLE(32767_2,b'01111111111111111111111111111111')
xxxx1=BLE(32767_2,b'0111111111111111111111111111111111111111111111111111111111111111')
yyyy1=BLE(-32768_2,z'7F')
zzzz1=BLE(-32768_2,z'7FFF')
aaaaa1=BLE(-32768_2,z'7FFFFFFF')
bbbbb1=BLE(-32768_2,z'7FFFFFFFFFFFFFFF')
ccccc1=BLE(-32768_2,o'177')
ddddd1=BLE(-32768_2,o'77777')
eeeee1=BLE(-32768_2,o'777777777')
fffff1=BLE(-32768_2,o'777777777777777777777')
ggggg1=BLE(-32768_2,b'01111111')
hhhhh1=BLE(-32768_2,b'0111111111111111')
iiiii1=BLE(-32768_2,b'01111111111111111111111111111111')
jjjjj1=BLE(-32768_2,b'0111111111111111111111111111111111111111111111111111111111111111')
kkkkk1=BLE(2147483647_4,z'7F')
lllll1=BLE(2147483647_4,z'7FFF')
nnnnn1=BLE(2147483647_4,z'7FFFFFFFFFFFFFFF')
ooooo1=BLE(2147483647_4,o'177')
ppppp1=BLE(2147483647_4,o'77777')
rrrrr1=BLE(2147483647_4,o'777777777777777777777')
sssss1=BLE(2147483647_4,b'01111111')
ttttt1=BLE(2147483647_4,b'0111111111111111')
vvvvv1=BLE(2147483647_4,b'0111111111111111111111111111111111111111111111111111111111111111')
wwwww1=BLE(-2147483648_4,z'7F')
xxxxx1=BLE(-2147483648_4,z'7FFF')
zzzzz1=BLE(-2147483648_4,z'7FFFFFFFFFFFFFFF')
aaaaaa1=BLE(-2147483648_4,o'177')
bbbbbb1=BLE(-2147483648_4,o'77777')
dddddd1=BLE(-2147483648_4,o'777777777777777777777')
eeeeee1=BLE(-2147483648_4,b'01111111')
ffffff1=BLE(-2147483648_4,b'0111111111111111')
hhhhhh1=BLE(-2147483648_4,b'0111111111111111111111111111111111111111111111111111111111111111')
iiiiii1=BLE(9223372036854775807_8,z'7F')
jjjjjj1=BLE(9223372036854775807_8,z'7FFF')
mmmmmm1=BLE(9223372036854775807_8,o'177')
nnnnnn1=BLE(9223372036854775807_8,o'77777')
qqqqqq1=BLE(9223372036854775807_8,b'01111111')
rrrrrr1=BLE(9223372036854775807_8,b'0111111111111111')
uuuuuu1=BLE(-9223372036854775808_8,z'7F')
vvvvvv1=BLE(-9223372036854775808_8,z'7FFF')
yyyyyy1=BLE(-9223372036854775808_8,o'177')
zzzzzz1=BLE(-9223372036854775808_8,o'77777')
ccccccc1=BLE(-9223372036854775808_8,b'01111111')
ddddddd1=BLE(-9223372036854775808_8,b'0111111111111111')

if( a .neqv. a1 )print*,"100"
if( b .neqv. b1 )print*,"101"
if( c .neqv. c1 )print*,"102"
if( d .neqv. d1 )print*,"103"
if( e .neqv. e1 )print*,"104"
if( f .neqv. f1 )print*,"105"
if( g .neqv. g1 )print*,"106"
if( h .neqv. h1 )print*,"107"
if( i .neqv. i1 )print*,"108"
if( j .neqv. j1 )print*,"109"
if( k .neqv. k1 )print*,"110"
if( l .neqv. l1 )print*,"111"
if( m .neqv. m1 )print*,"112"
if( n .neqv. n1 )print*,"113"
if( o .neqv. o1 )print*,"114"
if( p .neqv. p1 )print*,"115"
if( q .neqv. q1 )print*,"116"
if( r .neqv. r1 )print*,"117"
if( s .neqv. s1 )print*,"118"
if( t .neqv. t1 )print*,"119"
if( u .neqv. u1 )print*,"120"
if( v .neqv. v1 )print*,"121"
if( w .neqv. w1 )print*,"122"
if( x .neqv. x1 )print*,"123"
if( y .neqv. y1 )print*,"124"
if( z .neqv. z1 )print*,"125"
if( aa .neqv. aa1 )print*,"126"
if( bb .neqv. bb1 )print*,"127"
if( cc .neqv. cc1 )print*,"128"
if( dd .neqv. dd1 )print*,"129"
if( ee .neqv. ee1 )print*,"130"
if( ff .neqv. ff1 )print*,"131"
if( gg .neqv. gg1 )print*,"132"
if( hh .neqv. hh1 )print*,"133"
if( ii .neqv. ii1 )print*,"134"
if( jj .neqv. jj1 )print*,"135"
if( kk .neqv. kk1 )print*,"136"
if( ll .neqv. ll1 )print*,"137"
if( mm .neqv. mm1 )print*,"138"
if( nn .neqv. nn1 )print*,"139"
if( oo .neqv. oo1 )print*,"140"
if( pp .neqv. pp1 )print*,"141"
if( qq .neqv. qq1 )print*,"142"
if( rr .neqv. rr1 )print*,"143"
if( ss .neqv. ss1 )print*,"144"
if( tt .neqv. tt1 )print*,"145"
if( uu .neqv. uu1 )print*,"146"
if( vv .neqv. vv1 )print*,"147"
if( ww .neqv. ww1 )print*,"148"
if( xx .neqv. xx1 )print*,"149"
if( yy .neqv. yy1 )print*,"150"
if( zz .neqv. zz1 )print*,"151"
if( aaa .neqv. aaa1 )print*,"152"
if( bbb .neqv. bbb1 )print*,"153"
if( ccc .neqv. ccc1 )print*,"154"
if( ddd .neqv. ddd1 )print*,"155"
if( eee .neqv. eee1 )print*,"156"
if( fff .neqv. fff1 )print*,"157"
if( ggg .neqv. ggg1 )print*,"158"
if( hhh .neqv. hhh1 )print*,"159"
if( iii .neqv. iii1 )print*,"160"
if( jjj .neqv. jjj1 )print*,"161"
if( kkk .neqv. kkk1 )print*,"162"
if( lll .neqv. lll1 )print*,"163"
if( mmm .neqv. mmm1 )print*,"164"
if( nnn .neqv. nnn1 )print*,"165"
if( ooo .neqv. ooo1 )print*,"166"
if( ppp .neqv. ppp1 )print*,"167"
if( qqq .neqv. qqq1 )print*,"168"
if( rrr .neqv. rrr1 )print*,"169"
if( sss .neqv. sss1 )print*,"170"
if( ttt .neqv. ttt1 )print*,"171"
if( uuu .neqv. uuu1 )print*,"172"
if( vvv .neqv. vvv1 )print*,"173"
if( www .neqv. www1 )print*,"174"
if( xxx .neqv. xxx1 )print*,"175"
if( aaaa .neqv. aaaa1 )print*,"178"
if( bbbb .neqv. bbbb1 )print*,"179"
if( cccc .neqv. cccc1 )print*,"180"
if( dddd .neqv. dddd1 )print*,"181"
if( eeee .neqv. eeee1 )print*,"182"
if( ffff .neqv. ffff1 )print*,"183"
if( gggg .neqv. gggg1 )print*,"184"
if( hhhh .neqv. hhhh1 )print*,"185"
if( iiii .neqv. iiii1 )print*,"186"
if( jjjj .neqv. jjjj1 )print*,"187"
if( kkkk .neqv. kkkk1 )print*,"188"
if( llll .neqv. llll1 )print*,"189"
if( mmmm .neqv. mmmm1 )print*,"190"
if( nnnn .neqv. nnnn1 )print*,"191"
if( oooo .neqv. oooo1 )print*,"192"
if( pppp .neqv. pppp1 )print*,"193"
if( qqqq .neqv. qqqq1 )print*,"194"
if( rrrr .neqv. rrrr1 )print*,"195"
if( ssss .neqv. ssss1 )print*,"196"
if( tttt .neqv. tttt1 )print*,"197"
if( uuuu .neqv. uuuu1 )print*,"198"
if( vvvv .neqv. vvvv1 )print*,"199"
if( wwww .neqv. wwww1 )print*,"200"
if( xxxx .neqv. xxxx1 )print*,"201"
if( yyyy .neqv. yyyy1 )print*,"202"
if( zzzz .neqv. zzzz1 )print*,"203"
if( aaaaa .neqv. aaaaa1 )print*,"204"
if( bbbbb .neqv. bbbbb1 )print*,"205"
if( ccccc .neqv. ccccc1 )print*,"206"
if( ddddd .neqv. ddddd1 )print*,"207"
if( eeeee .neqv. eeeee1 )print*,"208"
if( fffff .neqv. fffff1 )print*,"209"
if( ggggg .neqv. ggggg1 )print*,"210"
if( hhhhh .neqv. hhhhh1 )print*,"211"
if( iiiii .neqv. iiiii1 )print*,"212"
if( jjjjj .neqv. jjjjj1 )print*,"213"
if( kkkkk .neqv. kkkkk1 )print*,"214"
if( lllll .neqv. lllll1 )print*,"215"
if( mmmmm .neqv. .true. )print*,"216"
if( nnnnn .neqv. nnnnn1 )print*,"217"
if( ooooo .neqv. ooooo1 )print*,"218"
if( ppppp .neqv. ppppp1 )print*,"219"
if( qqqqq .neqv. .false. )print*,"220"
if( rrrrr .neqv. rrrrr1 )print*,"221"
if( sssss .neqv. sssss1 )print*,"222"
if( ttttt .neqv. ttttt1 )print*,"223"
if( uuuuu .neqv. .true. )print*,"224"
if( vvvvv .neqv. vvvvv1 )print*,"225"
if( wwwww .neqv. wwwww1 )print*,"226"
if( xxxxx .neqv. xxxxx1 )print*,"227"
if( yyyyy .neqv. .false. )print*,"228"
if( zzzzz .neqv. zzzzz1 )print*,"229"
if( aaaaaa .neqv. aaaaaa1 )print*,"230"
if( bbbbbb .neqv. bbbbbb1 )print*,"231"
if( cccccc .neqv. .false. )print*,"232"
if( dddddd .neqv. dddddd1 )print*,"233"
if( eeeeee .neqv. eeeeee1 )print*,"234"
if( ffffff .neqv. ffffff1 )print*,"235"
if( gggggg .neqv. .false. )print*,"236"
if( hhhhhh .neqv. hhhhhh1 )print*,"237"
if( iiiiii .neqv. iiiiii1 )print*,"238"
if( jjjjjj .neqv. jjjjjj1 )print*,"239"
if( kkkkkk .neqv. .false. )print*,"240"
if( mmmmmm .neqv. mmmmmm1 )print*,"242"
if( nnnnnn .neqv. nnnnnn1 )print*,"243"
if( oooooo .neqv. .false. )print*,"244"
if( qqqqqq .neqv. qqqqqq1 )print*,"246"
if( rrrrrr .neqv. rrrrrr1 )print*,"247"
if( ssssss .neqv. .false. )print*,"248"
if( uuuuuu .neqv. uuuuuu1 )print*,"250"
if( vvvvvv .neqv. vvvvvv1 )print*,"251"
if( wwwwww .neqv. .false. )print*,"252"
if( yyyyyy .neqv. yyyyyy1 )print*,"254"
if( zzzzzz .neqv. zzzzzz1 )print*,"255"
if( aaaaaaa .neqv. .false. )print*,"256"
if( ccccccc .neqv. ccccccc1 )print*,"258"
if( ddddddd .neqv. ddddddd1 )print*,"259"
if( eeeeeee .neqv. .false. )print*,"260"
print*,"PASS"

end
