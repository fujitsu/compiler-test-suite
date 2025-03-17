call sub1
print *,'pass'
end
module vod
integer :: v1=101,v2=102,v3=103,v4=104,v5=105,v6=106,v7=107,v8=108,v9=109,va=110
integer :: vvv=100
end module
module vod0
use vod
integer :: w1=201,w2=202,w3=203,w4=204,w5=205,w6=206,w7=207,w8=208,w9=209,wa=210
integer :: www=201
end module
module vod1
use vod,only:vvv,v1,v9,v2,v3,v4,v5,v6,v7,v8,va
use vod0,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
end module
module vod2
use vod1,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
end module
module vod2a
use vod1,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
end
module mod
use vod
integer :: i1=101,i2=102,i3=103,i4=104,i5=105,i6=106,i7=107,i8=108,i9=109,ia=110
integer :: iii=100
end module
module mod0
use vod2,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
use vod2a,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
integer :: j1=201,j2=202,j3=203,j4=204,j5=205,j6=206,j7=207,j8=208,j9=209,ja=210
integer :: jjj=201
end module
module mod1
use mod,only:iii,i1,i9,i2,i3,i4,i5,i6,i7,i8,ia
use mod0,only:jjj,j1,j9,j2,j3,j4,j5,j6,j7,j8,ja
use mod0,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
end module
module mod2
use mod1,only:jjj,j1,j9,j2,j3,j4,j5,j6,j7,j8,ja
use mod1,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
end module
module mod2a
 use mod1,only:jjj,j1,j9,j2,j3,j4,j5,j6,j7,j8,ja
use mod1,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
end module

subroutine sub1
use mod2,only:jjj,j1,j9,j2,j3,j4,j5,j6,j7,j8,ja
use mod2a,only:jjj,j1,j9,j2,j3,j4,j5,j6,j7,j8,ja
use mod2,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
use mod2a,only:www,w1,w9,w2,w3,w4,w5,w6,w7,w8,wa
integer ::iii=300,i1=11,i9=19
if (iii/=300)write(6,*) "NG"
if (jjj/=201)write(6,*) "NG"
if (i1/=11)write(6,*) "NG"
if (j1/=201)write(6,*) "NG"
if (j2/=202)write(6,*) "NG"
if (j3/=203)write(6,*) "NG"
if (j4/=204)write(6,*) "NG"
if (j5/=205)write(6,*) "NG"
if (j6/=206)write(6,*) "NG"
if (j7/=207)write(6,*) "NG"
if (j8/=208)write(6,*) "NG"
if (i9/=19)write(6,*) "NG"
if (j9/=209)write(6,*) "NG"
if (w1/=201)write(6,*) "NG"
if (w2/=202)write(6,*) "NG"
if (w3/=203)write(6,*) "NG"
if (w4/=204)write(6,*) "NG"
if (w5/=205)write(6,*) "NG"
if (w6/=206)write(6,*) "NG"
if (w7/=207)write(6,*) "NG"
if (w8/=208)write(6,*) "NG"
if (w9/=209)write(6,*) "NG"
if (wa/=210)write(6,*) "NG"
end
