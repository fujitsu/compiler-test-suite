module m1
 type x1
   integer::ix0
   integer::ix1
 end type
end
module m2
use m1
 type,extends(x1)::x2
   integer::ix2
 end type
end
module m3
 use m2
 type,extends(x2)::x3
   integer::ix3
 end type
 type w1
   integer d1
   class(x1),pointer,dimension(:)::cy1,cy2,cy3
 end type
 type(w1)::v1(2)
 type w2
   integer d1
   type(x1)::ty1(3)
   type(x2)::ty2(3)
   type(x3)::ty3(3)
 end type
 type(w2),target::v2(2)
 contains
  subroutine chk(c1,c2,c3)
   class(x1),dimension(3)::c1,c2,c3
    if (c1(1)%ix1/=1)print *,201
    if (c1(2)%ix1/=2)print *,202
    if (c1(3)%ix1/=3)print *,203
   if (any(c1%ix1/=[1,2,3]))print *,207
    if (c2(1)%ix1/=1)print *,301
    if (c2(2)%ix1/=2)print *,302
    if (c2(3)%ix1/=3)print *,303
   if (any(c2%ix1/=[1,2,3]))print *,307
    if (c3(1)%ix1/=1)print *,401
    if (c3(2)%ix1/=2)print *,402
    if (c3(3)%ix1/=3)print *,403
   if (any(c3%ix1/=[1,2,3]))print *,407
 c1(2)%ix1=c1(2)%ix1+1
 c2(2)%ix1=c2(2)%ix1+1
 c3(2)%ix1=c3(2)%ix1+1
  end subroutine
end
subroutine s1
use m3
v2(2)%ty1%ix1=[1,2,3]
v2(2)%ty2%ix1=[1,2,3]
v2(2)%ty3%ix1=[1,2,3]
v1(2)%cy1=>v2(2)%ty1
v1(2)%cy2=>v2(2)%ty2
v1(2)%cy3=>v2(2)%ty3
!
if (v1(2)%cy1(1)%ix1/=1)print *,211
if (v1(2)%cy1(2)%ix1/=2)print *,212
if (v1(2)%cy1(3)%ix1/=3)print *,213
if (v1(2)%cy2(1)%ix1/=1)print *,221
if (v1(2)%cy2(2)%ix1/=2)print *,222
if (v1(2)%cy2(3)%ix1/=3)print *,223
if (v1(2)%cy3(1)%ix1/=1)print *,231
if (v1(2)%cy3(2)%ix1/=2)print *,232
if (v1(2)%cy3(3)%ix1/=3)print *,233
call chk(v1(2)%cy1,v1(2)%cy2,v1(2)%cy3)
if (v1(2)%cy1(1)%ix1/=1)print *,311
if (v1(2)%cy1(2)%ix1/=3)print *,312
if (v1(2)%cy1(3)%ix1/=3)print *,313
if (v1(2)%cy2(1)%ix1/=1)print *,321
if (v1(2)%cy2(2)%ix1/=3)print *,322
if (v1(2)%cy2(3)%ix1/=3)print *,323
if (v1(2)%cy3(1)%ix1/=1)print *,331
if (v1(2)%cy3(2)%ix1/=3)print *,332
if (v1(2)%cy3(3)%ix1/=3)print *,333
v2(2)%ty1%ix1=[1,2,3]
v2(2)%ty2%ix1=[1,2,3]
v2(2)%ty3%ix1=[1,2,3]
v1(2)%cy1=>v2(2)%ty1
v1(2)%cy2=>v2(2)%ty2
v1(2)%cy3=>v2(2)%ty3
v1(1)%cy1=>v1(2)%cy2
v1(1)%cy2=>v1(2)%cy3
v1(1)%cy3=>v1(2)%cy3
if (v1(1)%cy1(1)%ix1/=1)print *,211
if (v1(1)%cy1(2)%ix1/=2)print *,212
if (v1(1)%cy1(3)%ix1/=3)print *,213
if (v1(1)%cy2(1)%ix1/=1)print *,221
if (v1(1)%cy2(2)%ix1/=2)print *,222
if (v1(1)%cy2(3)%ix1/=3)print *,223
if (v1(1)%cy3(1)%ix1/=1)print *,231
if (v1(1)%cy3(2)%ix1/=2)print *,232
if (v1(1)%cy3(3)%ix1/=3)print *,233
call chk(v1(2)%cy1,v1(2)%cy2,v1(2)%cy3)
if (v1(1)%cy1(1)%ix1/=1)print *,1311
if (v1(1)%cy1(2)%ix1/=3)print *,1312
if (v1(1)%cy1(3)%ix1/=3)print *,1313
if (v1(1)%cy2(1)%ix1/=1)print *,1321
if (v1(1)%cy2(2)%ix1/=3)print *,1322
if (v1(1)%cy2(3)%ix1/=3)print *,1323
if (v1(1)%cy3(1)%ix1/=1)print *,1331
if (v1(1)%cy3(2)%ix1/=3)print *,1332
if (v1(1)%cy3(3)%ix1/=3)print *,1333
end
call s1
print *,'pass'
end

