logical,parameter::a=BGE(127_1,126_1)
logical,parameter::b=BGE(-128_1,-127_1)
logical,parameter::c=BGE(32767_2,32766_2)
logical,parameter::d=BGE(-32768_2,-32767_2)
logical,parameter::e=BGE(2147483647_4,2147483646_4)
logical,parameter::f=BGE(-2147483647_4,-2147483646_4)
logical,parameter::g=BGE(9223372036854775807_8,9223372036854775806_8)
logical,parameter::h=BGE(-9223372036854775808_8,-9223372036854775807_8)
logical,parameter::i=BGE(127_1,32767_2)
logical,parameter::j=BGE(127_1,2147483647_4)
logical,parameter::k=BGE(127_1,9223372036854775807_8)
logical,parameter::l=BGE(32767_2,2147483647_4)
logical,parameter::m=BGE(32767_2,9223372036854775807_8)
logical,parameter::n=BGE(2147483647_4,9223372036854775807_8)
logical,parameter::o=BGE(32767_2,127_1)
logical,parameter::p=BGE(2147483647_4,127_1)
logical,parameter::q=BGE(9223372036854775807_8,127_1)
logical,parameter::r=BGE(2147483647_4,32767_2)
logical,parameter::s=BGE(9223372036854775807_8,32767_2)
logical,parameter::t=BGE(9223372036854775807_8,2147483647_4)
logical,parameter::u=BGE(-128_1,-32768_2)
logical,parameter::v=BGE(-128_1,-2147483647_4)
logical,parameter::w=BGE(-128_1,-9223372036854775807_8)
logical,parameter::x=BGE(-32768_2,-2147483647_4)
logical,parameter::y=BGE(-32768_2,-9223372036854775807_8)
logical,parameter::z=BGE(-2147483647_4,-9223372036854775807_8)
logical,parameter::aa=BGE(-32768_2,-128_1)
logical,parameter::bb=BGE(-2147483647_4,-128_1)
logical,parameter::cc=BGE(-9223372036854775807_8,-128_1)
logical,parameter::dd=BGE(-2147483647_4,-32768_2)
logical,parameter::ee=BGE(-9223372036854775807_8,-32768_2)
logical,parameter::ff=BGE(-9223372036854775807_8,-2147483647_4)
logical,parameter::gg=BGE(127_1,-128_1)
logical,parameter::hh=BGE(127_1,-32768_2)
logical,parameter::ii=BGE(127_1,-2147483648_4)
logical,parameter::jj=BGE(127_1,-9223372036854775808_8)
logical,parameter::kk=BGE(32767_2,-128_1)
logical,parameter::ll=BGE(32767_2,-32768_2)
logical,parameter::mm=BGE(32767_2,-2147483648_4)
logical,parameter::nn=BGE(32767_2,-9223372036854775808_8)
logical,parameter::oo=BGE(2147483647_4,-128_1)
logical,parameter::pp=BGE(2147483647_4,-32768_2)
logical,parameter::qq=BGE(2147483647_4,-2147483648_4)
logical,parameter::rr=BGE(2147483647_4,-9223372036854775808_8)
logical,parameter::ss=BGE(9223372036854775807_8,-128_1)
logical,parameter::tt=BGE(9223372036854775807_8,-32768_2)
logical,parameter::uu=BGE(9223372036854775807_8,-2147483648_4)
logical,parameter::vv=BGE(9223372036854775807_8,-9223372036854775808_8)
logical,parameter::ww=BGE(-128_1,127_1)
logical,parameter::xx=BGE(-32768_2,127_1)
logical,parameter::yy=BGE(-2147483648_4,127_1)
logical,parameter::zz=BGE(-9223372036854775808_8,127_1)
logical,parameter::aaa=BGE(-128_1,32767_2)
logical,parameter::bbb=BGE(-32768_2,32767_2)
logical,parameter::ccc=BGE(-2147483648_4,32767_2)
logical,parameter::ddd=BGE(-9223372036854775808_8,32767_2)
logical,parameter::eee=BGE(-128_1,2147483647_4)
logical,parameter::fff=BGE(-32768_2,2147483647_4)
logical,parameter::ggg=BGE(-2147483648_4,2147483647_4)
logical,parameter::hhh=BGE(-9223372036854775808_8,2147483647_4)
logical,parameter::iii=BGE(-128_1,9223372036854775807_8)
logical,parameter::jjj=BGE(-32768_2,9223372036854775807_8)
logical,parameter::kkk=BGE(-2147483648_4,9223372036854775807_8)
logical,parameter::lll=BGE(-9223372036854775808_8,9223372036854775807_8)
logical,parameter::mmm=BGE(127_1,z'7F')
logical,parameter::nnn=BGE(127_1,z'7FFF')
logical,parameter::ooo=BGE(127_1,z'7FFFFFFF')
logical,parameter::ppp=BGE(127_1,z'7FFFFFFFFFFFFFFF')
logical,parameter::qqq=BGE(127_1,o'177')
logical,parameter::rrr=BGE(127_1,o'77777')
logical,parameter::sss=BGE(127_1,o'777777777')
logical,parameter::ttt=BGE(127_1,o'777777777777777777777')
logical,parameter::uuu=BGE(127_1,b'01111111')
logical,parameter::vvv=BGE(127_1,b'0111111111111111')
logical,parameter::www=BGE(127_1,b'01111111111111111111111111111111')
logical,parameter::xxx=BGE(127_1,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::aaaa=BGE(-128_1,z'7F')
logical,parameter::bbbb=BGE(-128_1,z'7FFF')
logical,parameter::cccc=BGE(-128_1,z'7FFFFFFF')
logical,parameter::dddd=BGE(-128_1,z'7FFFFFFFFFFFFFFF')
logical,parameter::eeee=BGE(-128_1,o'177')
logical,parameter::ffff=BGE(-128_1,o'77777')
logical,parameter::gggg=BGE(-128_1,o'777777777')
logical,parameter::hhhh=BGE(-128_1,o'777777777777777777777')
logical,parameter::iiii=BGE(-128_1,b'01111111')
logical,parameter::jjjj=BGE(-128_1,b'0111111111111111')
logical,parameter::kkkk=BGE(-128_1,b'01111111111111111111111111111111')
logical,parameter::llll=BGE(-128_1,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::mmmm=BGE(32767_2,z'7F')
logical,parameter::nnnn=BGE(32767_2,z'7FFF')
logical,parameter::oooo=BGE(32767_2,z'7FFFFFFF')
logical,parameter::pppp=BGE(32767_2,z'7FFFFFFFFFFFFFFF')
logical,parameter::qqqq=BGE(32767_2,o'177')
logical,parameter::rrrr=BGE(32767_2,o'77777')
logical,parameter::ssss=BGE(32767_2,o'777777777')
logical,parameter::tttt=BGE(32767_2,o'777777777777777777777')
logical,parameter::uuuu=BGE(32767_2,b'01111111')
logical,parameter::vvvv=BGE(32767_2,b'0111111111111111')
logical,parameter::wwww=BGE(32767_2,b'01111111111111111111111111111111')
logical,parameter::xxxx=BGE(32767_2,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::yyyy=BGE(-32768_2,z'7F')
logical,parameter::zzzz=BGE(-32768_2,z'7FFF')
logical,parameter::aaaaa=BGE(-32768_2,z'7FFFFFFF')
logical,parameter::bbbbb=BGE(-32768_2,z'7FFFFFFFFFFFFFFF')
logical,parameter::ccccc=BGE(-32768_2,o'177')
logical,parameter::ddddd=BGE(-32768_2,o'77777')
logical,parameter::eeeee=BGE(-32768_2,o'777777777')
logical,parameter::fffff=BGE(-32768_2,o'777777777777777777777')
logical,parameter::ggggg=BGE(-32768_2,b'01111111')
logical,parameter::hhhhh=BGE(-32768_2,b'0111111111111111')
logical,parameter::iiiii=BGE(-32768_2,b'01111111111111111111111111111111')
logical,parameter::jjjjj=BGE(-32768_2,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::kkkkk=BGE(2147483647_4,z'7F')
logical,parameter::lllll=BGE(2147483647_4,z'7FFF')
logical,parameter::mmmmm=BGE(2147483647_4,z'7FFFFFFF')
logical,parameter::nnnnn=BGE(2147483647_4,z'7FFFFFFFFFFFFFFF')
logical,parameter::ooooo=BGE(2147483647_4,o'177')
logical,parameter::ppppp=BGE(2147483647_4,o'77777')
logical,parameter::qqqqq=BGE(2147483647_4,o'777777777')
logical,parameter::rrrrr=BGE(2147483647_4,o'777777777777777777777')
logical,parameter::sssss=BGE(2147483647_4,b'01111111')
logical,parameter::ttttt=BGE(2147483647_4,b'0111111111111111')
logical,parameter::uuuuu=BGE(2147483647_4,b'01111111111111111111111111111111')
logical,parameter::vvvvv=BGE(2147483647_4,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::wwwww=BGE(-2147483648_4,z'7F')
logical,parameter::xxxxx=BGE(-2147483648_4,z'7FFF')
logical,parameter::yyyyy=BGE(-2147483648_4,z'7FFFFFFF')
logical,parameter::zzzzz=BGE(-2147483648_4,z'7FFFFFFFFFFFFFFF')
logical,parameter::aaaaaa=BGE(-2147483648_4,o'177')
logical,parameter::bbbbbb=BGE(-2147483648_4,o'77777')
logical,parameter::cccccc=BGE(-2147483648_4,o'777777777')
logical,parameter::dddddd=BGE(-2147483648_4,o'777777777777777777777')
logical,parameter::eeeeee=BGE(-2147483648_4,b'01111111')
logical,parameter::ffffff=BGE(-2147483648_4,b'0111111111111111')
logical,parameter::gggggg=BGE(-2147483648_4,b'01111111111111111111111111111111')
logical,parameter::hhhhhh=BGE(-2147483648_4,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::iiiiii=BGE(9223372036854775807_8,z'7F')
logical,parameter::jjjjjj=BGE(9223372036854775807_8,z'7FFF')
logical,parameter::kkkkkk=BGE(9223372036854775807_8,z'7FFFFFFF')
logical,parameter::mmmmmm=BGE(9223372036854775807_8,o'177')
logical,parameter::nnnnnn=BGE(9223372036854775807_8,o'77777')
logical,parameter::oooooo=BGE(9223372036854775807_8,o'777777777')
logical,parameter::qqqqqq=BGE(9223372036854775807_8,b'01111111')
logical,parameter::rrrrrr=BGE(9223372036854775807_8,b'0111111111111111')
logical,parameter::ssssss=BGE(9223372036854775807_8,b'01111111111111111111111111111111')
logical,parameter::uuuuuu=BGE(-9223372036854775808_8,z'7F')
logical,parameter::vvvvvv=BGE(-9223372036854775808_8,z'7FFF')
logical,parameter::wwwwww=BGE(-9223372036854775808_8,z'7FFFFFFF')
logical,parameter::yyyyyy=BGE(-9223372036854775808_8,o'177')
logical,parameter::zzzzzz=BGE(-9223372036854775808_8,o'77777')
logical,parameter::aaaaaaa=BGE(-9223372036854775808_8,o'777777777')
logical,parameter::ccccccc=BGE(-9223372036854775808_8,b'01111111')
logical,parameter::ddddddd=BGE(-9223372036854775808_8,b'0111111111111111')
logical,parameter::eeeeeee=BGE(-9223372036854775808_8,b'01111111111111111111111111111111')

logical::a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,w1,x1,y1,z1
logical::aa1,bb1,cc1,dd1,ee1,ff1,gg1,hh1,ii1,jj1,kk1,ll1,mm1,nn1,oo1,pp1,qq1,rr1,ss1,tt1,uu1,vv1,ww1,xx1,yy1,zz1
logical::aaa1,bbb1,ccc1,ddd1,eee1,fff1,ggg1,hhh1,iii1,jjj1,kkk1,lll1,mmm1,nnn1,ooo1,ppp1,qqq1,rrr1,sss1,ttt1,uuu1,vvv1,www1,xxx1
logical::aaaa1,bbbb1,cccc1,dddd1,eeee1,ffff1,gggg1,hhhh1,iiii1,jjjj1,kkkk1,llll1,mmmm1,nnnn1,oooo1,pppp1,qqqq1,rrrr1,ssss1,tttt1,uuuu1,vvvv1,wwww1,xxxx1,yyyy1,zzzz1
logical::aaaaa1,bbbbb1,ccccc1,ddddd1,eeeee1,fffff1,ggggg1,hhhhh1,iiiii1,jjjjj1,kkkkk1,lllll1,nnnnn1,ooooo1,ppppp1,rrrrr1,sssss1,ttttt1,vvvvv1
logical::wwwww1,xxxxx1,zzzzz1
logical::aaaaaa1,bbbbbb1,dddddd1,eeeeee1,ffffff1,hhhhhh1,iiiiii1,jjjjjj1,mmmmmm1,nnnnnn1,qqqqqq1,rrrrrr1
logical::uuuuuu1,vvvvvv1,yyyyyy1,zzzzzz1
logical::ccccccc1,ddddddd1

a1=BGE(127_1,126_1)
b1=BGE(-128_1,-127_1)
c1=BGE(32767_2,32766_2)
d1=BGE(-32768_2,-32767_2)
e1=BGE(2147483647_4,2147483646_4)
f1=BGE(-2147483647_4,-2147483646_4)
g1=BGE(9223372036854775807_8,9223372036854775806_8)
h1=BGE(-9223372036854775808_8,-9223372036854775807_8)
i1=BGE(127_1,32767_2)
j1=BGE(127_1,2147483647_4)
k1=BGE(127_1,9223372036854775807_8)
l1=BGE(32767_2,2147483647_4)
m1=BGE(32767_2,9223372036854775807_8)
n1=BGE(2147483647_4,9223372036854775807_8)
o1=BGE(32767_2,127_1)
p1=BGE(2147483647_4,127_1)
q1=BGE(9223372036854775807_8,127_1)
r1=BGE(2147483647_4,32767_2)
s1=BGE(9223372036854775807_8,32767_2)
t1=BGE(9223372036854775807_8,2147483647_4)
u1=BGE(-128_1,-32768_2)
v1=BGE(-128_1,-2147483647_4)
w1=BGE(-128_1,-9223372036854775807_8)
x1=BGE(-32768_2,-2147483647_4)
y1=BGE(-32768_2,-9223372036854775807_8)
z1=BGE(-2147483647_4,-9223372036854775807_8)
aa1=BGE(-32768_2,-128_1)
bb1=BGE(-2147483647_4,-128_1)
cc1=BGE(-9223372036854775807_8,-128_1)
dd1=BGE(-2147483647_4,-32768_2)
ee1=BGE(-9223372036854775807_8,-32768_2)
ff1=BGE(-9223372036854775807_8,-2147483647_4)
gg1=BGE(127_1,-128_1)
hh1=BGE(127_1,-32768_2)
ii1=BGE(127_1,-2147483648_4)
jj1=BGE(127_1,-9223372036854775808_8)
kk1=BGE(32767_2,-128_1)
ll1=BGE(32767_2,-32768_2)
mm1=BGE(32767_2,-2147483648_4)
nn1=BGE(32767_2,-9223372036854775808_8)
oo1=BGE(2147483647_4,-128_1)
pp1=BGE(2147483647_4,-32768_2)
qq1=BGE(2147483647_4,-2147483648_4)
rr1=BGE(2147483647_4,-9223372036854775808_8)
ss1=BGE(9223372036854775807_8,-128_1)
tt1=BGE(9223372036854775807_8,-32768_2)
uu1=BGE(9223372036854775807_8,-2147483648_4)
vv1=BGE(9223372036854775807_8,-9223372036854775808_8)
ww1=BGE(-128_1,127_1)
xx1=BGE(-32768_2,127_1)
yy1=BGE(-2147483648_4,127_1)
zz1=BGE(-9223372036854775808_8,127_1)
aaa1=BGE(-128_1,32767_2)
bbb1=BGE(-32768_2,32767_2)
ccc1=BGE(-2147483648_4,32767_2)
ddd1=BGE(-9223372036854775808_8,32767_2)
eee1=BGE(-128_1,2147483647_4)
fff1=BGE(-32768_2,2147483647_4)
ggg1=BGE(-2147483648_4,2147483647_4)
hhh1=BGE(-9223372036854775808_8,2147483647_4)
iii1=BGE(-128_1,9223372036854775807_8)
jjj1=BGE(-32768_2,9223372036854775807_8)
kkk1=BGE(-2147483648_4,9223372036854775807_8)
lll1=BGE(-9223372036854775808_8,9223372036854775807_8)
mmm1=BGE(127_1,z'7F')
nnn1=BGE(127_1,z'7FFF')
ooo1=BGE(127_1,z'7FFFFFFF')
ppp1=BGE(127_1,z'7FFFFFFFFFFFFFFF')
qqq1=BGE(127_1,o'177')
rrr1=BGE(127_1,o'77777')
sss1=BGE(127_1,o'777777777')
ttt1=BGE(127_1,o'777777777777777777777')
uuu1=BGE(127_1,b'01111111')
vvv1=BGE(127_1,b'0111111111111111')
www1=BGE(127_1,b'01111111111111111111111111111111')
xxx1=BGE(127_1,b'0111111111111111111111111111111111111111111111111111111111111111')
aaaa1=BGE(-128_1,z'7F')
bbbb1=BGE(-128_1,z'7FFF')
cccc1=BGE(-128_1,z'7FFFFFFF')
dddd1=BGE(-128_1,z'7FFFFFFFFFFFFFFF')
eeee1=BGE(-128_1,o'177')
ffff1=BGE(-128_1,o'77777')
gggg1=BGE(-128_1,o'777777777')
hhhh1=BGE(-128_1,o'777777777777777777777')
iiii1=BGE(-128_1,b'01111111')
jjjj1=BGE(-128_1,b'0111111111111111')
kkkk1=BGE(-128_1,b'01111111111111111111111111111111')
llll1=BGE(-128_1,b'0111111111111111111111111111111111111111111111111111111111111111')
mmmm1=BGE(32767_2,z'7F')
nnnn1=BGE(32767_2,z'7FFF')
oooo1=BGE(32767_2,z'7FFFFFFF')
pppp1=BGE(32767_2,z'7FFFFFFFFFFFFFFF')
qqqq1=BGE(32767_2,o'177')
rrrr1=BGE(32767_2,o'77777')
ssss1=BGE(32767_2,o'777777777')
tttt1=BGE(32767_2,o'777777777777777777777')
uuuu1=BGE(32767_2,b'01111111')
vvvv1=BGE(32767_2,b'0111111111111111')
wwww1=BGE(32767_2,b'01111111111111111111111111111111')
xxxx1=BGE(32767_2,b'0111111111111111111111111111111111111111111111111111111111111111')
yyyy1=BGE(-32768_2,z'7F')
zzzz1=BGE(-32768_2,z'7FFF')
aaaaa1=BGE(-32768_2,z'7FFFFFFF')
bbbbb1=BGE(-32768_2,z'7FFFFFFFFFFFFFFF')
ccccc1=BGE(-32768_2,o'177')
ddddd1=BGE(-32768_2,o'77777')
eeeee1=BGE(-32768_2,o'777777777')
fffff1=BGE(-32768_2,o'777777777777777777777')
ggggg1=BGE(-32768_2,b'01111111')
hhhhh1=BGE(-32768_2,b'0111111111111111')
iiiii1=BGE(-32768_2,b'01111111111111111111111111111111')
jjjjj1=BGE(-32768_2,b'0111111111111111111111111111111111111111111111111111111111111111')
kkkkk1=BGE(2147483647_4,z'7F')
lllll1=BGE(2147483647_4,z'7FFF')
nnnnn1=BGE(2147483647_4,z'7FFFFFFFFFFFFFFF')
ooooo1=BGE(2147483647_4,o'177')
ppppp1=BGE(2147483647_4,o'77777')
rrrrr1=BGE(2147483647_4,o'777777777777777777777')
sssss1=BGE(2147483647_4,b'01111111')
ttttt1=BGE(2147483647_4,b'0111111111111111')
vvvvv1=BGE(2147483647_4,b'0111111111111111111111111111111111111111111111111111111111111111')
wwwww1=BGE(-2147483648_4,z'7F')
xxxxx1=BGE(-2147483648_4,z'7FFF')
zzzzz1=BGE(-2147483648_4,z'7FFFFFFFFFFFFFFF')
aaaaaa1=BGE(-2147483648_4,o'177')
bbbbbb1=BGE(-2147483648_4,o'77777')
dddddd1=BGE(-2147483648_4,o'777777777777777777777')
eeeeee1=BGE(-2147483648_4,b'01111111')
ffffff1=BGE(-2147483648_4,b'0111111111111111')
hhhhhh1=BGE(-2147483648_4,b'0111111111111111111111111111111111111111111111111111111111111111')
iiiiii1=BGE(9223372036854775807_8,z'7F')
jjjjjj1=BGE(9223372036854775807_8,z'7FFF')
mmmmmm1=BGE(9223372036854775807_8,o'177')
nnnnnn1=BGE(9223372036854775807_8,o'77777')
qqqqqq1=BGE(9223372036854775807_8,b'01111111')
rrrrrr1=BGE(9223372036854775807_8,b'0111111111111111')
uuuuuu1=BGE(-9223372036854775808_8,z'7F')
vvvvvv1=BGE(-9223372036854775808_8,z'7FFF')
yyyyyy1=BGE(-9223372036854775808_8,o'177')
zzzzzz1=BGE(-9223372036854775808_8,o'77777')
ccccccc1=BGE(-9223372036854775808_8,b'01111111')
ddddddd1=BGE(-9223372036854775808_8,b'0111111111111111')

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
if( qqqqq .neqv. .true. )print*,"220"
if( rrrrr .neqv. rrrrr1 )print*,"221"
if( sssss .neqv. sssss1 )print*,"222"
if( ttttt .neqv. ttttt1 )print*,"223"
if( uuuuu .neqv. .true. )print*,"224"
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
