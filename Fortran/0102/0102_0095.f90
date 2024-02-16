logical,parameter::a=BLT(127_1,126_1)
logical,parameter::b=BLT(-128_1,-127_1)
logical,parameter::c=BLT(32767_2,32766_2)
logical,parameter::d=BLT(-32768_2,-32767_2)
logical,parameter::e=BLT(2147483647_4,2147483646_4)
logical,parameter::f=BLT(-2147483647_4,-2147483646_4)
logical,parameter::g=BLT(9223372036854775807_8,9223372036854775806_8)
logical,parameter::h=BLT(-9223372036854775808_8,-9223372036854775807_8)
logical,parameter::i=BLT(127_1,32767_2)
logical,parameter::j=BLT(127_1,2147483647_4)
logical,parameter::k=BLT(127_1,9223372036854775807_8)
logical,parameter::l=BLT(32767_2,2147483647_4)
logical,parameter::m=BLT(32767_2,9223372036854775807_8)
logical,parameter::n=BLT(2147483647_4,9223372036854775807_8)
logical,parameter::o=BLT(32767_2,127_1)
logical,parameter::p=BLT(2147483647_4,127_1)
logical,parameter::q=BLT(9223372036854775807_8,127_1)
logical,parameter::r=BLT(2147483647_4,32767_2)
logical,parameter::s=BLT(9223372036854775807_8,32767_2)
logical,parameter::t=BLT(9223372036854775807_8,2147483647_4)
logical,parameter::u=BLT(-128_1,-32768_2)
logical,parameter::v=BLT(-128_1,-2147483647_4)
logical,parameter::w=BLT(-128_1,-9223372036854775807_8)
logical,parameter::x=BLT(-32768_2,-2147483647_4)
logical,parameter::y=BLT(-32768_2,-9223372036854775807_8)
logical,parameter::z=BLT(-2147483647_4,-9223372036854775807_8)
logical,parameter::aa=BLT(-32768_2,-128_1)
logical,parameter::bb=BLT(-2147483647_4,-128_1)
logical,parameter::cc=BLT(-9223372036854775807_8,-128_1)
logical,parameter::dd=BLT(-2147483647_4,-32768_2)
logical,parameter::ee=BLT(-9223372036854775807_8,-32768_2)
logical,parameter::ff=BLT(-9223372036854775807_8,-2147483647_4)
logical,parameter::gg=BLT(127_1,-128_1)
logical,parameter::hh=BLT(127_1,-32768_2)
logical,parameter::ii=BLT(127_1,-2147483648_4)
logical,parameter::jj=BLT(127_1,-9223372036854775808_8)
logical,parameter::kk=BLT(32767_2,-128_1)
logical,parameter::ll=BLT(32767_2,-32768_2)
logical,parameter::mm=BLT(32767_2,-2147483648_4)
logical,parameter::nn=BLT(32767_2,-9223372036854775808_8)
logical,parameter::oo=BLT(2147483647_4,-128_1)
logical,parameter::pp=BLT(2147483647_4,-32768_2)
logical,parameter::qq=BLT(2147483647_4,-2147483648_4)
logical,parameter::rr=BLT(2147483647_4,-9223372036854775808_8)
logical,parameter::ss=BLT(9223372036854775807_8,-128_1)
logical,parameter::tt=BLT(9223372036854775807_8,-32768_2)
logical,parameter::uu=BLT(9223372036854775807_8,-2147483648_4)
logical,parameter::vv=BLT(9223372036854775807_8,-9223372036854775808_8)
logical,parameter::ww=BLT(-128_1,127_1)
logical,parameter::xx=BLT(-32768_2,127_1)
logical,parameter::yy=BLT(-2147483648_4,127_1)
logical,parameter::zz=BLT(-9223372036854775808_8,127_1)
logical,parameter::aaa=BLT(-128_1,32767_2)
logical,parameter::bbb=BLT(-32768_2,32767_2)
logical,parameter::ccc=BLT(-2147483648_4,32767_2)
logical,parameter::ddd=BLT(-9223372036854775808_8,32767_2)
logical,parameter::eee=BLT(-128_1,2147483647_4)
logical,parameter::fff=BLT(-32768_2,2147483647_4)
logical,parameter::ggg=BLT(-2147483648_4,2147483647_4)
logical,parameter::hhh=BLT(-9223372036854775808_8,2147483647_4)
logical,parameter::iii=BLT(-128_1,9223372036854775807_8)
logical,parameter::jjj=BLT(-32768_2,9223372036854775807_8)
logical,parameter::kkk=BLT(-2147483648_4,9223372036854775807_8)
logical,parameter::lll=BLT(-9223372036854775808_8,9223372036854775807_8)
logical,parameter::mmm=BLT(127_1,z'7F')
logical,parameter::nnn=BLT(127_1,z'7FFF')
logical,parameter::ooo=BLT(127_1,z'7FFFFFFF')
logical,parameter::ppp=BLT(127_1,z'7FFFFFFFFFFFFFFF')
logical,parameter::qqq=BLT(127_1,o'177')
logical,parameter::rrr=BLT(127_1,o'77777')
logical,parameter::sss=BLT(127_1,o'777777777')
logical,parameter::ttt=BLT(127_1,o'777777777777777777777')
logical,parameter::uuu=BLT(127_1,b'01111111')
logical,parameter::vvv=BLT(127_1,b'0111111111111111')
logical,parameter::www=BLT(127_1,b'01111111111111111111111111111111')
logical,parameter::xxx=BLT(127_1,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::aaaa=BLT(-128_1,z'7F')
logical,parameter::bbbb=BLT(-128_1,z'7FFF')
logical,parameter::cccc=BLT(-128_1,z'7FFFFFFF')
logical,parameter::dddd=BLT(-128_1,z'7FFFFFFFFFFFFFFF')
logical,parameter::eeee=BLT(-128_1,o'177')
logical,parameter::ffff=BLT(-128_1,o'77777')
logical,parameter::gggg=BLT(-128_1,o'777777777')
logical,parameter::hhhh=BLT(-128_1,o'777777777777777777777')
logical,parameter::iiii=BLT(-128_1,b'01111111')
logical,parameter::jjjj=BLT(-128_1,b'0111111111111111')
logical,parameter::kkkk=BLT(-128_1,b'01111111111111111111111111111111')
logical,parameter::llll=BLT(-128_1,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::mmmm=BLT(32767_2,z'7F')
logical,parameter::nnnn=BLT(32767_2,z'7FFF')
logical,parameter::oooo=BLT(32767_2,z'7FFFFFFF')
logical,parameter::pppp=BLT(32767_2,z'7FFFFFFFFFFFFFFF')
logical,parameter::qqqq=BLT(32767_2,o'177')
logical,parameter::rrrr=BLT(32767_2,o'77777')
logical,parameter::ssss=BLT(32767_2,o'777777777')
logical,parameter::tttt=BLT(32767_2,o'777777777777777777777')
logical,parameter::uuuu=BLT(32767_2,b'01111111')
logical,parameter::vvvv=BLT(32767_2,b'0111111111111111')
logical,parameter::wwww=BLT(32767_2,b'01111111111111111111111111111111')
logical,parameter::xxxx=BLT(32767_2,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::yyyy=BLT(-32768_2,z'7F')
logical,parameter::zzzz=BLT(-32768_2,z'7FFF')
logical,parameter::aaaaa=BLT(-32768_2,z'7FFFFFFF')
logical,parameter::bbbbb=BLT(-32768_2,z'7FFFFFFFFFFFFFFF')
logical,parameter::ccccc=BLT(-32768_2,o'177')
logical,parameter::ddddd=BLT(-32768_2,o'77777')
logical,parameter::eeeee=BLT(-32768_2,o'777777777')
logical,parameter::fffff=BLT(-32768_2,o'777777777777777777777')
logical,parameter::ggggg=BLT(-32768_2,b'01111111')
logical,parameter::hhhhh=BLT(-32768_2,b'0111111111111111')
logical,parameter::iiiii=BLT(-32768_2,b'01111111111111111111111111111111')
logical,parameter::jjjjj=BLT(-32768_2,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::kkkkk=BLT(2147483647_4,z'7F')
logical,parameter::lllll=BLT(2147483647_4,z'7FFF')
logical,parameter::mmmmm=BLT(2147483647_4,z'7FFFFFFF')
logical,parameter::nnnnn=BLT(2147483647_4,z'7FFFFFFFFFFFFFFF')
logical,parameter::ooooo=BLT(2147483647_4,o'177')
logical,parameter::ppppp=BLT(2147483647_4,o'77777')
logical,parameter::qqqqq=BLT(2147483647_4,o'777777777')
logical,parameter::rrrrr=BLT(2147483647_4,o'777777777777777777777')
logical,parameter::sssss=BLT(2147483647_4,b'01111111')
logical,parameter::ttttt=BLT(2147483647_4,b'0111111111111111')
logical,parameter::uuuuu=BLT(2147483647_4,b'01111111111111111111111111111111')
logical,parameter::vvvvv=BLT(2147483647_4,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::wwwww=BLT(-2147483648_4,z'7F')
logical,parameter::xxxxx=BLT(-2147483648_4,z'7FFF')
logical,parameter::yyyyy=BLT(-2147483648_4,z'7FFFFFFF')
logical,parameter::zzzzz=BLT(-2147483648_4,z'7FFFFFFFFFFFFFFF')
logical,parameter::aaaaaa=BLT(-2147483648_4,o'177')
logical,parameter::bbbbbb=BLT(-2147483648_4,o'77777')
logical,parameter::cccccc=BLT(-2147483648_4,o'777777777')
logical,parameter::dddddd=BLT(-2147483648_4,o'777777777777777777777')
logical,parameter::eeeeee=BLT(-2147483648_4,b'01111111')
logical,parameter::ffffff=BLT(-2147483648_4,b'0111111111111111')
logical,parameter::gggggg=BLT(-2147483648_4,b'01111111111111111111111111111111')
logical,parameter::hhhhhh=BLT(-2147483648_4,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::iiiiii=BLT(9223372036854775807_8,z'7F')
logical,parameter::jjjjjj=BLT(9223372036854775807_8,z'7FFF')
logical,parameter::kkkkkk=BLT(9223372036854775807_8,z'7FFFFFFF')
!logical,parameter::llllll=BLT(9223372036854775807_8,z'7FFFFFFFFFFFFFFF')
logical,parameter::mmmmmm=BLT(9223372036854775807_8,o'177')
logical,parameter::nnnnnn=BLT(9223372036854775807_8,o'77777')
logical,parameter::oooooo=BLT(9223372036854775807_8,o'777777777')
!logical,parameter::pppppp=BLT(9223372036854775807_8,o'777777777777777777777')
logical,parameter::qqqqqq=BLT(9223372036854775807_8,b'01111111')
logical,parameter::rrrrrr=BLT(9223372036854775807_8,b'0111111111111111')
logical,parameter::ssssss=BLT(9223372036854775807_8,b'01111111111111111111111111111111')
!logical,parameter::tttttt=BLT(9223372036854775807_8,b'0111111111111111111111111111111111111111111111111111111111111111')
logical,parameter::uuuuuu=BLT(-9223372036854775808_8,z'7F')
logical,parameter::vvvvvv=BLT(-9223372036854775808_8,z'7FFF')
logical,parameter::wwwwww=BLT(-9223372036854775808_8,z'7FFFFFFF')
!logical,parameter::xxxxxx=BLT(-9223372036854775808_8,z'7FFFFFFFFFFFFFFF')
logical,parameter::yyyyyy=BLT(-9223372036854775808_8,o'177')
logical,parameter::zzzzzz=BLT(-9223372036854775808_8,o'77777')
logical,parameter::aaaaaaa=BLT(-9223372036854775808_8,o'777777777')
!logical,parameter::bbbbbbb=BLT(-9223372036854775808_8,o'777777777777777777777')
logical,parameter::ccccccc=BLT(-9223372036854775808_8,b'01111111')
logical,parameter::ddddddd=BLT(-9223372036854775808_8,b'0111111111111111')
logical,parameter::eeeeeee=BLT(-9223372036854775808_8,b'01111111111111111111111111111111')
!logical,parameter::fffffff=BLT(-9223372036854775808_8,b'0111111111111111111111111111111111111111111111111111111111111111')

logical::a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1,q1,r1,s1,t1,u1,v1,w1,x1,y1,z1
logical::aa1,bb1,cc1,dd1,ee1,ff1,gg1,hh1,ii1,jj1,kk1,ll1,mm1,nn1,oo1,pp1,qq1,rr1,ss1,tt1,uu1,vv1,ww1,xx1,yy1,zz1
logical::aaa1,bbb1,ccc1,ddd1,eee1,fff1,ggg1,hhh1,iii1,jjj1,kkk1,lll1,mmm1,nnn1,ooo1,ppp1,qqq1,rrr1,sss1,ttt1,uuu1,vvv1,www1,xxx1
logical::aaaa1,bbbb1,cccc1,dddd1,eeee1,ffff1,gggg1,hhhh1,iiii1,jjjj1,kkkk1,llll1,mmmm1,nnnn1,oooo1,pppp1,qqqq1,rrrr1,ssss1,tttt1,uuuu1,vvvv1,wwww1,xxxx1,yyyy1,zzzz1
logical::aaaaa1,bbbbb1,ccccc1,ddddd1,eeeee1,fffff1,ggggg1,hhhhh1,iiiii1,jjjjj1,kkkkk1,lllll1,nnnnn1,ooooo1,ppppp1,rrrrr1,sssss1,ttttt1,vvvvv1
logical::wwwww1,xxxxx1,zzzzz1
logical::aaaaaa1,bbbbbb1,dddddd1,eeeeee1,ffffff1,hhhhhh1,iiiiii1,jjjjjj1,mmmmmm1,nnnnnn1,qqqqqq1,rrrrrr1
logical::uuuuuu1,vvvvvv1,yyyyyy1,zzzzzz1
logical::ccccccc1,ddddddd1
!logical::llllll1,pppppp1,tttttt1,xxxxxx1,bbbbbbb1,fffffff1
!logical::mmmmm1,qqqqq1,uuuuu1,yyyyy1,cccccc1,gggggg1,kkkkkk1,oooooo1,ssssss1,wwwwww1,aaaaaaa1,eeeeeee1

a1=BLT(127_1,126_1)
b1=BLT(-128_1,-127_1)
c1=BLT(32767_2,32766_2)
d1=BLT(-32768_2,-32767_2)
e1=BLT(2147483647_4,2147483646_4)
f1=BLT(-2147483647_4,-2147483646_4)
g1=BLT(9223372036854775807_8,9223372036854775806_8)
h1=BLT(-9223372036854775808_8,-9223372036854775807_8)
i1=BLT(127_1,32767_2)
j1=BLT(127_1,2147483647_4)
k1=BLT(127_1,9223372036854775807_8)
l1=BLT(32767_2,2147483647_4)
m1=BLT(32767_2,9223372036854775807_8)
n1=BLT(2147483647_4,9223372036854775807_8)
o1=BLT(32767_2,127_1)
p1=BLT(2147483647_4,127_1)
q1=BLT(9223372036854775807_8,127_1)
r1=BLT(2147483647_4,32767_2)
s1=BLT(9223372036854775807_8,32767_2)
t1=BLT(9223372036854775807_8,2147483647_4)
u1=BLT(-128_1,-32768_2)
v1=BLT(-128_1,-2147483647_4)
w1=BLT(-128_1,-9223372036854775807_8)
x1=BLT(-32768_2,-2147483647_4)
y1=BLT(-32768_2,-9223372036854775807_8)
z1=BLT(-2147483647_4,-9223372036854775807_8)
aa1=BLT(-32768_2,-128_1)
bb1=BLT(-2147483647_4,-128_1)
cc1=BLT(-9223372036854775807_8,-128_1)
dd1=BLT(-2147483647_4,-32768_2)
ee1=BLT(-9223372036854775807_8,-32768_2)
ff1=BLT(-9223372036854775807_8,-2147483647_4)
gg1=BLT(127_1,-128_1)
hh1=BLT(127_1,-32768_2)
ii1=BLT(127_1,-2147483648_4)
jj1=BLT(127_1,-9223372036854775808_8)
kk1=BLT(32767_2,-128_1)
ll1=BLT(32767_2,-32768_2)
mm1=BLT(32767_2,-2147483648_4)
nn1=BLT(32767_2,-9223372036854775808_8)
oo1=BLT(2147483647_4,-128_1)
pp1=BLT(2147483647_4,-32768_2)
qq1=BLT(2147483647_4,-2147483648_4)
rr1=BLT(2147483647_4,-9223372036854775808_8)
ss1=BLT(9223372036854775807_8,-128_1)
tt1=BLT(9223372036854775807_8,-32768_2)
uu1=BLT(9223372036854775807_8,-2147483648_4)
vv1=BLT(9223372036854775807_8,-9223372036854775808_8)
ww1=BLT(-128_1,127_1)
xx1=BLT(-32768_2,127_1)
yy1=BLT(-2147483648_4,127_1)
zz1=BLT(-9223372036854775808_8,127_1)
aaa1=BLT(-128_1,32767_2)
bbb1=BLT(-32768_2,32767_2)
ccc1=BLT(-2147483648_4,32767_2)
ddd1=BLT(-9223372036854775808_8,32767_2)
eee1=BLT(-128_1,2147483647_4)
fff1=BLT(-32768_2,2147483647_4)
ggg1=BLT(-2147483648_4,2147483647_4)
hhh1=BLT(-9223372036854775808_8,2147483647_4)
iii1=BLT(-128_1,9223372036854775807_8)
jjj1=BLT(-32768_2,9223372036854775807_8)
kkk1=BLT(-2147483648_4,9223372036854775807_8)
lll1=BLT(-9223372036854775808_8,9223372036854775807_8)
mmm1=BLT(127_1,z'7F')
nnn1=BLT(127_1,z'7FFF')
ooo1=BLT(127_1,z'7FFFFFFF')
ppp1=BLT(127_1,z'7FFFFFFFFFFFFFFF')
qqq1=BLT(127_1,o'177')
rrr1=BLT(127_1,o'77777')
sss1=BLT(127_1,o'777777777')
ttt1=BLT(127_1,o'777777777777777777777')
uuu1=BLT(127_1,b'01111111')
vvv1=BLT(127_1,b'0111111111111111')
www1=BLT(127_1,b'01111111111111111111111111111111')
xxx1=BLT(127_1,b'0111111111111111111111111111111111111111111111111111111111111111')
aaaa1=BLT(-128_1,z'7F')
bbbb1=BLT(-128_1,z'7FFF')
cccc1=BLT(-128_1,z'7FFFFFFF')
dddd1=BLT(-128_1,z'7FFFFFFFFFFFFFFF')
eeee1=BLT(-128_1,o'177')
ffff1=BLT(-128_1,o'77777')
gggg1=BLT(-128_1,o'777777777')
hhhh1=BLT(-128_1,o'777777777777777777777')
iiii1=BLT(-128_1,b'01111111')
jjjj1=BLT(-128_1,b'0111111111111111')
kkkk1=BLT(-128_1,b'01111111111111111111111111111111')
llll1=BLT(-128_1,b'0111111111111111111111111111111111111111111111111111111111111111')
mmmm1=BLT(32767_2,z'7F')
nnnn1=BLT(32767_2,z'7FFF')
oooo1=BLT(32767_2,z'7FFFFFFF')
pppp1=BLT(32767_2,z'7FFFFFFFFFFFFFFF')
qqqq1=BLT(32767_2,o'177')
rrrr1=BLT(32767_2,o'77777')
ssss1=BLT(32767_2,o'777777777')
tttt1=BLT(32767_2,o'777777777777777777777')
uuuu1=BLT(32767_2,b'01111111')
vvvv1=BLT(32767_2,b'0111111111111111')
wwww1=BLT(32767_2,b'01111111111111111111111111111111')
xxxx1=BLT(32767_2,b'0111111111111111111111111111111111111111111111111111111111111111')
yyyy1=BLT(-32768_2,z'7F')
zzzz1=BLT(-32768_2,z'7FFF')
aaaaa1=BLT(-32768_2,z'7FFFFFFF')
bbbbb1=BLT(-32768_2,z'7FFFFFFFFFFFFFFF')
ccccc1=BLT(-32768_2,o'177')
ddddd1=BLT(-32768_2,o'77777')
eeeee1=BLT(-32768_2,o'777777777')
fffff1=BLT(-32768_2,o'777777777777777777777')
ggggg1=BLT(-32768_2,b'01111111')
hhhhh1=BLT(-32768_2,b'0111111111111111')
iiiii1=BLT(-32768_2,b'01111111111111111111111111111111')
jjjjj1=BLT(-32768_2,b'0111111111111111111111111111111111111111111111111111111111111111')
kkkkk1=BLT(2147483647_4,z'7F')
lllll1=BLT(2147483647_4,z'7FFF')
!mmmmm1=BLT(2147483647_4,z'7FFFFFFF')
nnnnn1=BLT(2147483647_4,z'7FFFFFFFFFFFFFFF')
ooooo1=BLT(2147483647_4,o'177')
ppppp1=BLT(2147483647_4,o'77777')
!qqqqq1=BLT(2147483647_4,o'777777777')
rrrrr1=BLT(2147483647_4,o'777777777777777777777')
sssss1=BLT(2147483647_4,b'01111111')
ttttt1=BLT(2147483647_4,b'0111111111111111')
!uuuuu1=BLT(2147483647_4,b'01111111111111111111111111111111')
vvvvv1=BLT(2147483647_4,b'0111111111111111111111111111111111111111111111111111111111111111')
wwwww1=BLT(-2147483648_4,z'7F')
xxxxx1=BLT(-2147483648_4,z'7FFF')
!yyyyy1=BLT(-2147483648_4,z'7FFFFFFF')
zzzzz1=BLT(-2147483648_4,z'7FFFFFFFFFFFFFFF')
aaaaaa1=BLT(-2147483648_4,o'177')
bbbbbb1=BLT(-2147483648_4,o'77777')
!cccccc1=BLT(-2147483648_4,o'777777777')
dddddd1=BLT(-2147483648_4,o'777777777777777777777')
eeeeee1=BLT(-2147483648_4,b'01111111')
ffffff1=BLT(-2147483648_4,b'0111111111111111')
!gggggg1=BLT(-2147483648_4,b'01111111111111111111111111111111')
hhhhhh1=BLT(-2147483648_4,b'0111111111111111111111111111111111111111111111111111111111111111')
iiiiii1=BLT(9223372036854775807_8,z'7F')
jjjjjj1=BLT(9223372036854775807_8,z'7FFF')
!kkkkkk1=BLT(9223372036854775807_8,z'7FFFFFFF')
!llllll1=BLT(9223372036854775807_8,z'7FFFFFFFFFFFFFFF')
mmmmmm1=BLT(9223372036854775807_8,o'177')
nnnnnn1=BLT(9223372036854775807_8,o'77777')
!oooooo1=BLT(9223372036854775807_8,o'777777777')
!pppppp1=BLT(9223372036854775807_8,o'777777777777777777777')
qqqqqq1=BLT(9223372036854775807_8,b'01111111')
rrrrrr1=BLT(9223372036854775807_8,b'0111111111111111')
!ssssss1=BLT(9223372036854775807_8,b'01111111111111111111111111111111')
!tttttt1=BLT(9223372036854775807_8,b'0111111111111111111111111111111111111111111111111111111111111111')
uuuuuu1=BLT(-9223372036854775808_8,z'7F')
vvvvvv1=BLT(-9223372036854775808_8,z'7FFF')
!wwwwww1=BLT(-9223372036854775808_8,z'7FFFFFFF')
!xxxxxx1=BLT(-9223372036854775808_8,z'7FFFFFFFFFFFFFFF')
yyyyyy1=BLT(-9223372036854775808_8,o'177')
zzzzzz1=BLT(-9223372036854775808_8,o'77777')
!aaaaaaa1=BLT(-9223372036854775808_8,o'777777777')
!bbbbbbb1=BLT(-9223372036854775808_8,o'777777777777777777777')
ccccccc1=BLT(-9223372036854775808_8,b'01111111')
ddddddd1=BLT(-9223372036854775808_8,b'0111111111111111')
!eeeeeee1=BLT(-9223372036854775808_8,b'01111111111111111111111111111111')
!fffffff1=BLT(-9223372036854775808_8,b'0111111111111111111111111111111111111111111111111111111111111111')

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
!if( yyy .neqv. yyy1 )print*,"176"
!if( zzz .neqv. zzz1 )print*,"177"
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
if( qqqqq .neqv. .false. )print*,"220"
if( rrrrr .neqv. rrrrr1 )print*,"221"
if( sssss .neqv. sssss1 )print*,"222"
if( ttttt .neqv. ttttt1 )print*,"223"
if( uuuuu .neqv. .false. )print*,"224"
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
!if( llllll .neqv. llllll1 )print*,"241"
if( mmmmmm .neqv. mmmmmm1 )print*,"242"
if( nnnnnn .neqv. nnnnnn1 )print*,"243"
if( oooooo .neqv. .false. )print*,"244"
!if( pppppp .neqv. pppppp1 )print*,"245"
if( qqqqqq .neqv. qqqqqq1 )print*,"246"
if( rrrrrr .neqv. rrrrrr1 )print*,"247"
if( ssssss .neqv. .false. )print*,"248"
!if( tttttt .neqv. tttttt1 )print*,"249"
if( uuuuuu .neqv. uuuuuu1 )print*,"250"
if( vvvvvv .neqv. vvvvvv1 )print*,"251"
if( wwwwww .neqv. .false. )print*,"252"
!if( xxxxxx .neqv. xxxxxx1 )print*,"253"
if( yyyyyy .neqv. yyyyyy1 )print*,"254"
if( zzzzzz .neqv. zzzzzz1 )print*,"255"
if( aaaaaaa .neqv. .false. )print*,"256"
!if( bbbbbbb .neqv. bbbbbbb1 )print*,"257"
if( ccccccc .neqv. ccccccc1 )print*,"258"
if( ddddddd .neqv. ddddddd1 )print*,"259"
if( eeeeeee .neqv. .false. )print*,"260"
!if( fffffff .neqv. fffffff1 )print*,"261"
print*,"PASS"

end
