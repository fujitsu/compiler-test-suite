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
   class(x1),pointer,dimension(:)::cy1,cy2,cy3
    type y
      integer::y1
      class(x1),pointer,dimension(:)::dy1,dy2,dy3
    end type
    type(y)::v(2)
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
  end subroutine
end
subroutine s1
use m3
type(x1),target::ty1(3)
type(x2),target::ty2(3)
type(x3),target::ty3(3)
ty1%ix1=[1,2,3]
ty2%ix1=[1,2,3]
ty3%ix1=[1,2,3]
cy1=>ty1
cy2=>ty2
cy3=>ty3
if (cy1(1)%ix1/=1)print *,211
if (cy1(2)%ix1/=2)print *,212
if (cy1(3)%ix1/=3)print *,213
if (cy2(1)%ix1/=1)print *,221
if (cy2(2)%ix1/=2)print *,222
if (cy2(3)%ix1/=3)print *,223
if (cy3(1)%ix1/=1)print *,231
if (cy3(2)%ix1/=2)print *,232
if (cy3(3)%ix1/=3)print *,233
call chk(cy1,cy2,cy3)
v(2)%dy1=>cy1
v(2)%dy2=>cy2
v(2)%dy3=>cy3
if (v(2)%dy1(1)%ix1/=1)print *,511
if (v(2)%dy1(2)%ix1/=2)print *,512
if (v(2)%dy1(3)%ix1/=3)print *,513
if (v(2)%dy2(1)%ix1/=1)print *,521
if (v(2)%dy2(2)%ix1/=2)print *,522
if (v(2)%dy2(3)%ix1/=3)print *,523
if (v(2)%dy3(1)%ix1/=1)print *,531
if (v(2)%dy3(2)%ix1/=2)print *,532
if (v(2)%dy3(3)%ix1/=3)print *,533
call chk(v(2)%dy1,v(2)%dy2,v(2)%dy3)
end
call s1
print *,'pass'
end

