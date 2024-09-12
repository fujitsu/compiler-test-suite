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
   class(x1),pointer, dimension(:)::cy1,cy2,cy3
   class(x1),pointer, dimension(:)::dy1,dy2,dy3
 contains
  subroutine chk(c1,d1)
   class(x1)::c1(3)
   class(x1)::d1(2)
   optional::c1
    if (c1(1)%ix1/=1)print *,201
    if (c1(2)%ix1/=2)print *,202
    if (c1(3)%ix1/=3)print *,203
   if (any(c1%ix1/=[1,2,3]))print *,207
 c1(2)%ix1=c1(2)%ix1+1
 d1(2)%ix1=d1(2)%ix1+1
   if (d1(1)%ix1/=1)print *,631
   if (d1(2)%ix1/=4)print *,633
  end subroutine
end
subroutine s1
use m3
type(x1),target::ty1(3),yy1(3)
type(x2),target::ty2(3),yy2(3)
type(x3),target::ty3(3),yy3(3)
ty1%ix1=[1,2,3]
ty2%ix1=[1,2,3]
ty3%ix1=[1,2,3]
yy1%ix1=[1,2,3]
yy2%ix1=[1,2,3]
yy3%ix1=[1,2,3]
cy1=>ty1
cy2=>ty2
cy3=>ty3
dy1=>yy1(1:3:2)
dy2=>yy2(1:3:2)
dy3=>yy3(1:3:2)
if (cy1(1)%ix1/=1)print *,211
if (cy1(2)%ix1/=2)print *,212
if (cy1(3)%ix1/=3)print *,213
if (cy2(1)%ix1/=1)print *,221
if (cy2(2)%ix1/=2)print *,222
if (cy2(3)%ix1/=3)print *,223
if (cy3(1)%ix1/=1)print *,231
if (cy3(2)%ix1/=2)print *,232
if (cy3(3)%ix1/=3)print *,233
if (dy1(1)%ix1/=1)print *,411
if (dy1(2)%ix1/=3)print *,413
if (dy2(1)%ix1/=1)print *,421
if (dy2(2)%ix1/=3)print *,423
if (dy3(1)%ix1/=1)print *,431
if (dy3(2)%ix1/=3)print *,433
call chk(cy1,dy1)
if (cy1(1)%ix1/=1)print *,311
if (cy1(2)%ix1/=3)print *,312
if (cy1(3)%ix1/=3)print *,313,cy1(3)%ix1
end
call s1
print *,'pass'
end

