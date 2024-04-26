logical,parameter::a=BGT(127_1,126_1)
logical,parameter::b=BGT(-128_1,-127_1)
logical,parameter::c=BGT(32767_2,32766_2)
logical,parameter::d=BGT(-32768_2,-32767_2)
logical,parameter::e=BGT(2147483647_4,2147483646_4)
logical,parameter::f=BGT(-2147483647_4,-2147483646_4)
logical,parameter::g=BGT(9223372036854775807_8,9223372036854775806_8)
logical,parameter::h=BGT(-9223372036854775808_8,-9223372036854775807_8)
logical,parameter::i=BGT(127_1,32767_2)
logical,parameter::j=BGT(127_1,2147483647_4)
logical,parameter::k=BGT(127_1,9223372036854775807_8)
logical,parameter::l=BGT(32767_2,2147483647_4)
logical,parameter::m=BGT(32767_2,9223372036854775807_8)
logical,parameter::n=BGT(2147483647_4,9223372036854775807_8)
logical,parameter::o=BGT(32767_2,127_1)
logical,parameter::p=BGT(2147483647_4,127_1)
logical,parameter::q=BGT(9223372036854775807_8,127_1)
logical,parameter::r=BGT(2147483647_4,32767_2)
logical,parameter::s=BGT(9223372036854775807_8,32767_2)
logical,parameter::t=BGT(9223372036854775807_8,2147483647_4)
logical,parameter::u=BGT(-128_1,-32768_2)
logical,parameter::v=BGT(-128_1,-2147483647_4)
logical,parameter::w=BGT(-128_1,-9223372036854775807_8)
logical,parameter::x=BGT(-32768_2,-2147483647_4)
logical,parameter::y=BGT(-32768_2,-9223372036854775807_8)
logical,parameter::z=BGT(-2147483647_4,-9223372036854775807_8)
logical,parameter::aa=BGT(-32768_2,-128_1)
logical,parameter::bb=BGT(-2147483647_4,-128_1)
logical,parameter::cc=BGT(-9223372036854775807_8,-128_1)
logical,parameter::dd=BGT(-2147483647_4,-32768_2)
logical,parameter::ee=BGT(-9223372036854775807_8,-32768_2)
logical,parameter::ff=BGT(-9223372036854775807_8,-2147483647_4)
logical,parameter::gg=BGT(127_1,-128_1)
logical,parameter::hh=BGT(127_1,-32768_2)
logical,parameter::ii=BGT(127_1,-2147483648_4)
logical,parameter::jj=BGT(127_1,-9223372036854775808_8)
logical,parameter::kk=BGT(32767_2,-128_1)
logical,parameter::ll=BGT(32767_2,-32768_2)
logical,parameter::mm=BGT(32767_2,-2147483648_4)
logical,parameter::nn=BGT(32767_2,-9223372036854775808_8)
logical,parameter::oo=BGT(2147483647_4,-128_1)
logical,parameter::pp=BGT(2147483647_4,-32768_2)
logical,parameter::qq=BGT(2147483647_4,-2147483648_4)
logical,parameter::rr=BGT(2147483647_4,-9223372036854775808_8)
logical,parameter::ss=BGT(9223372036854775807_8,-128_1)
logical,parameter::tt=BGT(9223372036854775807_8,-32768_2)
logical,parameter::uu=BGT(9223372036854775807_8,-2147483648_4)
logical,parameter::vv=BGT(9223372036854775807_8,-9223372036854775808_8)
logical,parameter::ww=BGT(-128_1,127_1)
logical,parameter::xx=BGT(-32768_2,127_1)
logical,parameter::yy=BGT(-2147483648_4,127_1)
logical,parameter::zz=BGT(-9223372036854775808_8,127_1)
logical,parameter::aaa=BGT(-128_1,32767_2)
logical,parameter::bbb=BGT(-32768_2,32767_2)
logical,parameter::ccc=BGT(-2147483648_4,32767_2)
logical,parameter::ddd=BGT(-9223372036854775808_8,32767_2)
logical,parameter::eee=BGT(-128_1,2147483647_4)
logical,parameter::fff=BGT(-32768_2,2147483647_4)
logical,parameter::ggg=BGT(-2147483648_4,2147483647_4)
logical,parameter::hhh=BGT(-9223372036854775808_8,2147483647_4)
logical,parameter::iii=BGT(-128_1,9223372036854775807_8)
logical,parameter::jjj=BGT(-32768_2,9223372036854775807_8)
logical,parameter::kkk=BGT(-2147483648_4,9223372036854775807_8)
logical,parameter::lll=BGT(-9223372036854775808_8,9223372036854775807_8)
logical,parameter::mmm=BGT(127_1,z'7F')
logical,parameter::nnn=BGT(127_1,z'7FFF')
logical,parameter::ooo=BGT(127_1,z'7FFFFFFF')
logical,parameter::ppp=BGT(127_1,z'7FFFFFFFFFFFFFFF')
logical,parameter::qqq=BGT(127_1,o'177')
logical,parameter::rrr=BGT(127_1,o'77777')
logical,parameter::sss=BGT(127_1,o'777777777')
logical,parameter::ttt=BGT(127_1,o'777777777777777777777')
logical,parameter::uuu=BGT(127_1,b'01111111')
logical,parameter::vvv=BGT(127_1,b'0111111111111111')
logical,parameter::www=BGT(127_1,b'01111111111111111111111111111111')
logical,parameter::xxx=BGT(127_1,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::aaaa=BGT(-128_1,z'7F')
logical,parameter::bbbb=BGT(-128_1,z'7FFF')
logical,parameter::cccc=BGT(-128_1,z'7FFFFFFF')
logical,parameter::dddd=BGT(-128_1,z'7FFFFFFFFFFFFFFF')
logical,parameter::eeee=BGT(-128_1,o'177')
logical,parameter::ffff=BGT(-128_1,o'77777')
logical,parameter::gggg=BGT(-128_1,o'777777777')
logical,parameter::hhhh=BGT(-128_1,o'777777777777777777777')
logical,parameter::iiii=BGT(-128_1,b'01111111')
logical,parameter::jjjj=BGT(-128_1,b'0111111111111111')
logical,parameter::kkkk=BGT(-128_1,b'01111111111111111111111111111111')
logical,parameter::llll=BGT(-128_1,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::mmmm=BGT(32767_2,z'7F')
logical,parameter::nnnn=BGT(32767_2,z'7FFF')
logical,parameter::oooo=BGT(32767_2,z'7FFFFFFF')
logical,parameter::pppp=BGT(32767_2,z'7FFFFFFFFFFFFFFF')
logical,parameter::qqqq=BGT(32767_2,o'177')
logical,parameter::rrrr=BGT(32767_2,o'77777')
logical,parameter::ssss=BGT(32767_2,o'777777777')
logical,parameter::tttt=BGT(32767_2,o'777777777777777777777')
logical,parameter::uuuu=BGT(32767_2,b'01111111')
logical,parameter::vvvv=BGT(32767_2,b'0111111111111111')
logical,parameter::wwww=BGT(32767_2,b'01111111111111111111111111111111')
logical,parameter::xxxx=BGT(32767_2,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::yyyy=BGT(-32768_2,z'7F')
logical,parameter::zzzz=BGT(-32768_2,z'7FFF')
logical,parameter::aaaaa=BGT(-32768_2,z'7FFFFFFF')
logical,parameter::bbbbb=BGT(-32768_2,z'7FFFFFFFFFFFFFFF')
logical,parameter::ccccc=BGT(-32768_2,o'177')
logical,parameter::ddddd=BGT(-32768_2,o'77777')
logical,parameter::eeeee=BGT(-32768_2,o'777777777')
logical,parameter::fffff=BGT(-32768_2,o'777777777777777777777')
logical,parameter::ggggg=BGT(-32768_2,b'01111111')
logical,parameter::hhhhh=BGT(-32768_2,b'0111111111111111')
logical,parameter::iiiii=BGT(-32768_2,b'01111111111111111111111111111111')
logical,parameter::jjjjj=BGT(-32768_2,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::kkkkk=BGT(2147483647_4,z'7F')
logical,parameter::lllll=BGT(2147483647_4,z'7FFF')
logical,parameter::mmmmm=BGT(2147483647_4,z'7FFFFFFF')
logical,parameter::nnnnn=BGT(2147483647_4,z'7FFFFFFFFFFFFFFF')
logical,parameter::ooooo=BGT(2147483647_4,o'177')
logical,parameter::ppppp=BGT(2147483647_4,o'77777')
logical,parameter::qqqqq=BGT(2147483647_4,o'777777777')
logical,parameter::rrrrr=BGT(2147483647_4,o'777777777777777777777')
logical,parameter::sssss=BGT(2147483647_4,b'01111111')
logical,parameter::ttttt=BGT(2147483647_4,b'0111111111111111')
logical,parameter::uuuuu=BGT(2147483647_4,b'01111111111111111111111111111111')
logical,parameter::vvvvv=BGT(2147483647_4,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::wwwww=BGT(-2147483648_4,z'7F')
logical,parameter::xxxxx=BGT(-2147483648_4,z'7FFF')
logical,parameter::yyyyy=BGT(-2147483648_4,z'7FFFFFFF')
logical,parameter::zzzzz=BGT(-2147483648_4,z'7FFFFFFFFFFFFFFF')
logical,parameter::aaaaaa=BGT(-2147483648_4,o'177')
logical,parameter::bbbbbb=BGT(-2147483648_4,o'77777')
logical,parameter::cccccc=BGT(-2147483648_4,o'777777777')
logical,parameter::dddddd=BGT(-2147483648_4,o'777777777777777777777')
logical,parameter::eeeeee=BGT(-2147483648_4,b'01111111')
logical,parameter::ffffff=BGT(-2147483648_4,b'0111111111111111')
logical,parameter::gggggg=BGT(-2147483648_4,b'01111111111111111111111111111111')
logical,parameter::hhhhhh=BGT(-2147483648_4,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::iiiiii=BGT(9223372036854775807_8,z'7F')
logical,parameter::jjjjjj=BGT(9223372036854775807_8,z'7FFF')
logical,parameter::kkkkkk=BGT(9223372036854775807_8,z'7FFFFFFF')
logical,parameter::mmmmmm=BGT(9223372036854775807_8,o'177')
logical,parameter::nnnnnn=BGT(9223372036854775807_8,o'77777')
logical,parameter::oooooo=BGT(9223372036854775807_8,o'777777777')
logical,parameter::qqqqqq=BGT(9223372036854775807_8,b'01111111')
logical,parameter::rrrrrr=BGT(9223372036854775807_8,b'0111111111111111')
logical,parameter::ssssss=BGT(9223372036854775807_8,b'01111111111111111111111111111111')
logical,parameter::uuuuuu=BGT(-9223372036854775808_8,z'7F')
logical,parameter::vvvvvv=BGT(-9223372036854775808_8,z'7FFF')
logical,parameter::wwwwww=BGT(-9223372036854775808_8,z'7FFFFFFF')
logical,parameter::yyyyyy=BGT(-9223372036854775808_8,o'177')
logical,parameter::zzzzzz=BGT(-9223372036854775808_8,o'77777')
logical,parameter::aaaaaaa=BGT(-9223372036854775808_8,o'777777777')
logical,parameter::ccccccc=BGT(-9223372036854775808_8,b'01111111')
logical,parameter::ddddddd=BGT(-9223372036854775808_8,b'0111111111111111')
logical,parameter::eeeeeee=BGT(-9223372036854775808_8,b'01111111111111111111111111111111')

logical::a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,w1,x1,y1,z1
logical::aa1,bb1,cc1,dd1,ee1,ff1,gg1,hh1,ii1,jj1,kk1,ll1,mm1,nn1,oo1,pp1,qq1,rr1,ss1,tt1,uu1,vv1,ww1,xx1,yy1,zz1
logical::aaa1,bbb1,ccc1,ddd1,eee1,fff1,ggg1,hhh1,iii1,jjj1,kkk1,lll1,mmm1,nnn1,ooo1,ppp1,qqq1,rrr1,sss1,ttt1,uuu1,vvv1,www1,xxx1
logical::aaaa1,bbbb1,cccc1,dddd1,eeee1,ffff1,gggg1,hhhh1,iiii1,jjjj1,kkkk1,llll1,mmmm1,nnnn1,oooo1,pppp1,qqqq1,rrrr1,ssss1,tttt1,uuuu1,vvvv1,wwww1,xxxx1,yyyy1,zzzz1
logical::aaaaa1,bbbbb1,ccccc1,ddddd1,eeeee1,fffff1,ggggg1,hhhhh1,iiiii1,jjjjj1,kkkkk1,lllll1,nnnnn1,ooooo1,ppppp1,rrrrr1,sssss1,ttttt1,vvvvv1
logical::wwwww1,xxxxx1,zzzzz1
logical::aaaaaa1,bbbbbb1,dddddd1,eeeeee1,ffffff1,hhhhhh1,iiiiii1,jjjjjj1,mmmmmm1,nnnnnn1,qqqqqq1,rrrrrr1
logical::uuuuuu1,vvvvvv1,yyyyyy1,zzzzzz1
logical::ccccccc1,ddddddd1

a1=BGT(127_1,126_1)
b1=BGT(-128_1,-127_1)
c1=BGT(32767_2,32766_2)
d1=BGT(-32768_2,-32767_2)
e1=BGT(2147483647_4,2147483646_4)
f1=BGT(-2147483647_4,-2147483646_4)
g1=BGT(9223372036854775807_8,9223372036854775806_8)
h1=BGT(-9223372036854775808_8,-9223372036854775807_8)
i1=BGT(127_1,32767_2)
j1=BGT(127_1,2147483647_4)
k1=BGT(127_1,9223372036854775807_8)
l1=BGT(32767_2,2147483647_4)
m1=BGT(32767_2,9223372036854775807_8)
n1=BGT(2147483647_4,9223372036854775807_8)
o1=BGT(32767_2,127_1)
p1=BGT(2147483647_4,127_1)
q1=BGT(9223372036854775807_8,127_1)
r1=BGT(2147483647_4,32767_2)
s1=BGT(9223372036854775807_8,32767_2)
t1=BGT(9223372036854775807_8,2147483647_4)
u1=BGT(-128_1,-32768_2)
v1=BGT(-128_1,-2147483647_4)
w1=BGT(-128_1,-9223372036854775807_8)
x1=BGT(-32768_2,-2147483647_4)
y1=BGT(-32768_2,-9223372036854775807_8)
z1=BGT(-2147483647_4,-9223372036854775807_8)
aa1=BGT(-32768_2,-128_1)
bb1=BGT(-2147483647_4,-128_1)
cc1=BGT(-9223372036854775807_8,-128_1)
dd1=BGT(-2147483647_4,-32768_2)
ee1=BGT(-9223372036854775807_8,-32768_2)
ff1=BGT(-9223372036854775807_8,-2147483647_4)
gg1=BGT(127_1,-128_1)
hh1=BGT(127_1,-32768_2)
ii1=BGT(127_1,-2147483648_4)
jj1=BGT(127_1,-9223372036854775808_8)
kk1=BGT(32767_2,-128_1)
ll1=BGT(32767_2,-32768_2)
mm1=BGT(32767_2,-2147483648_4)
nn1=BGT(32767_2,-9223372036854775808_8)
oo1=BGT(2147483647_4,-128_1)
pp1=BGT(2147483647_4,-32768_2)
qq1=BGT(2147483647_4,-2147483648_4)
rr1=BGT(2147483647_4,-9223372036854775808_8)
ss1=BGT(9223372036854775807_8,-128_1)
tt1=BGT(9223372036854775807_8,-32768_2)
uu1=BGT(9223372036854775807_8,-2147483648_4)
vv1=BGT(9223372036854775807_8,-9223372036854775808_8)
ww1=BGT(-128_1,127_1)
xx1=BGT(-32768_2,127_1)
yy1=BGT(-2147483648_4,127_1)
zz1=BGT(-9223372036854775808_8,127_1)
aaa1=BGT(-128_1,32767_2)
bbb1=BGT(-32768_2,32767_2)
ccc1=BGT(-2147483648_4,32767_2)
ddd1=BGT(-9223372036854775808_8,32767_2)
eee1=BGT(-128_1,2147483647_4)
fff1=BGT(-32768_2,2147483647_4)
ggg1=BGT(-2147483648_4,2147483647_4)
hhh1=BGT(-9223372036854775808_8,2147483647_4)
iii1=BGT(-128_1,9223372036854775807_8)
jjj1=BGT(-32768_2,9223372036854775807_8)
kkk1=BGT(-2147483648_4,9223372036854775807_8)
lll1=BGT(-9223372036854775808_8,9223372036854775807_8)
mmm1=BGT(127_1,z'7F')
nnn1=BGT(127_1,z'7FFF')
ooo1=BGT(127_1,z'7FFFFFFF')
ppp1=BGT(127_1,z'7FFFFFFFFFFFFFFF')
qqq1=BGT(127_1,o'177')
rrr1=BGT(127_1,o'77777')
sss1=BGT(127_1,o'777777777')
ttt1=BGT(127_1,o'777777777777777777777')
uuu1=BGT(127_1,b'01111111')
vvv1=BGT(127_1,b'0111111111111111')
www1=BGT(127_1,b'01111111111111111111111111111111')
xxx1=BGT(127_1,b'0111111111111111111111111111111111111111111111111111111111111111')
aaaa1=BGT(-128_1,z'7F')
bbbb1=BGT(-128_1,z'7FFF')
cccc1=BGT(-128_1,z'7FFFFFFF')
dddd1=BGT(-128_1,z'7FFFFFFFFFFFFFFF')
eeee1=BGT(-128_1,o'177')
ffff1=BGT(-128_1,o'77777')
gggg1=BGT(-128_1,o'777777777')
hhhh1=BGT(-128_1,o'777777777777777777777')
iiii1=BGT(-128_1,b'01111111')
jjjj1=BGT(-128_1,b'0111111111111111')
kkkk1=BGT(-128_1,b'01111111111111111111111111111111')
llll1=BGT(-128_1,b'0111111111111111111111111111111111111111111111111111111111111111')
mmmm1=BGT(32767_2,z'7F')
nnnn1=BGT(32767_2,z'7FFF')
oooo1=BGT(32767_2,z'7FFFFFFF')
pppp1=BGT(32767_2,z'7FFFFFFFFFFFFFFF')
qqqq1=BGT(32767_2,o'177')
rrrr1=BGT(32767_2,o'77777')
ssss1=BGT(32767_2,o'777777777')
tttt1=BGT(32767_2,o'777777777777777777777')
uuuu1=BGT(32767_2,b'01111111')
vvvv1=BGT(32767_2,b'0111111111111111')
wwww1=BGT(32767_2,b'01111111111111111111111111111111')
xxxx1=BGT(32767_2,b'0111111111111111111111111111111111111111111111111111111111111111')
yyyy1=BGT(-32768_2,z'7F')
zzzz1=BGT(-32768_2,z'7FFF')
aaaaa1=BGT(-32768_2,z'7FFFFFFF')
bbbbb1=BGT(-32768_2,z'7FFFFFFFFFFFFFFF')
ccccc1=BGT(-32768_2,o'177')
ddddd1=BGT(-32768_2,o'77777')
eeeee1=BGT(-32768_2,o'777777777')
fffff1=BGT(-32768_2,o'777777777777777777777')
ggggg1=BGT(-32768_2,b'01111111')
hhhhh1=BGT(-32768_2,b'0111111111111111')
iiiii1=BGT(-32768_2,b'01111111111111111111111111111111')
jjjjj1=BGT(-32768_2,b'0111111111111111111111111111111111111111111111111111111111111111')
kkkkk1=BGT(2147483647_4,z'7F')
lllll1=BGT(2147483647_4,z'7FFF')
nnnnn1=BGT(2147483647_4,z'7FFFFFFFFFFFFFFF')
ooooo1=BGT(2147483647_4,o'177')
ppppp1=BGT(2147483647_4,o'77777')
rrrrr1=BGT(2147483647_4,o'777777777777777777777')
sssss1=BGT(2147483647_4,b'01111111')
ttttt1=BGT(2147483647_4,b'0111111111111111')
vvvvv1=BGT(2147483647_4,b'0111111111111111111111111111111111111111111111111111111111111111')
wwwww1=BGT(-2147483648_4,z'7F')
xxxxx1=BGT(-2147483648_4,z'7FFF')
zzzzz1=BGT(-2147483648_4,z'7FFFFFFFFFFFFFFF')
aaaaaa1=BGT(-2147483648_4,o'177')
bbbbbb1=BGT(-2147483648_4,o'77777')
dddddd1=BGT(-2147483648_4,o'777777777777777777777')
eeeeee1=BGT(-2147483648_4,b'01111111')
ffffff1=BGT(-2147483648_4,b'0111111111111111')
hhhhhh1=BGT(-2147483648_4,b'0111111111111111111111111111111111111111111111111111111111111111')
iiiiii1=BGT(9223372036854775807_8,z'7F')
jjjjjj1=BGT(9223372036854775807_8,z'7FFF')
mmmmmm1=BGT(9223372036854775807_8,o'177')
nnnnnn1=BGT(9223372036854775807_8,o'77777')
qqqqqq1=BGT(9223372036854775807_8,b'01111111')
rrrrrr1=BGT(9223372036854775807_8,b'0111111111111111')
uuuuuu1=BGT(-9223372036854775808_8,z'7F')
vvvvvv1=BGT(-9223372036854775808_8,z'7FFF')
yyyyyy1=BGT(-9223372036854775808_8,o'177')
zzzzzz1=BGT(-9223372036854775808_8,o'77777')
ccccccc1=BGT(-9223372036854775808_8,b'01111111')
ddddddd1=BGT(-9223372036854775808_8,b'0111111111111111')

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
if( mmmmm .neqv. .false. )print*,"216"
if( nnnnn .neqv. nnnnn1 )print*,"217"
if( ooooo .neqv. ooooo1 )print*,"218"
if( ppppp .neqv. ppppp1 )print*,"219"
if( qqqqq .neqv. .true. )print*,"220"
if( rrrrr .neqv. rrrrr1 )print*,"221"
if( sssss .neqv. sssss1 )print*,"222"
if( ttttt .neqv. ttttt1 )print*,"223"
if( uuuuu .neqv. .false. )print*,"224"
if( vvvvv .neqv. vvvvv1 )print*,"225"
if( wwwww .neqv. wwwww1 )print*,"226"
if( xxxxx .neqv. xxxxx1 )print*,"227"
if( yyyyy .neqv. .true. )print*,"228"
if( zzzzz .neqv. zzzzz1 )print*,"229"
if( aaaaaa .neqv. aaaaaa1 )print*,"230"
if( bbbbbb .neqv. bbbbbb1 )print*,"231"
if( cccccc .neqv. .true. )print*,"232"
if( dddddd .neqv. dddddd1 )print*,"233"
if( eeeeee .neqv. eeeeee1 )print*,"234"
if( ffffff .neqv. ffffff1 )print*,"235"
if( gggggg .neqv. .true. )print*,"236"
if( hhhhhh .neqv. hhhhhh1 )print*,"237"
if( iiiiii .neqv. iiiiii1 )print*,"238"
if( jjjjjj .neqv. jjjjjj1 )print*,"239"
if( kkkkkk .neqv. .true. )print*,"240"
if( mmmmmm .neqv. mmmmmm1 )print*,"242"
if( nnnnnn .neqv. nnnnnn1 )print*,"243"
if( oooooo .neqv. .true. )print*,"244"
if( qqqqqq .neqv. qqqqqq1 )print*,"246"
if( rrrrrr .neqv. rrrrrr1 )print*,"247"
if( ssssss .neqv. .true. )print*,"248"
if( uuuuuu .neqv. uuuuuu1 )print*,"250"
if( vvvvvv .neqv. vvvvvv1 )print*,"251"
if( wwwwww .neqv. .true. )print*,"252"
if( yyyyyy .neqv. yyyyyy1 )print*,"254"
if( zzzzzz .neqv. zzzzzz1 )print*,"255"
if( aaaaaaa .neqv. .true. )print*,"256"
if( ccccccc .neqv. ccccccc1 )print*,"258"
if( ddddddd .neqv. ddddddd1 )print*,"259"
if( eeeeeee .neqv. .true. )print*,"260"
print*,"PASS"

end
