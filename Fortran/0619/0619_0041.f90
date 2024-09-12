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
  subroutine chk(c1,c2,c3,d1,d2,d3)
   class(x1)::c1(3),c2(3),c3(3)
   class(x1)::d1(2),d2(2),d3(2)
   optional::c1,c2,c3,d1,d2,d3
  nn=0
  if (present(c1)) nn=nn+1
  if (present(c2)) nn=nn+1
  if (present(c3)) nn=nn+1
  if (present(d1)) nn=nn+1
  if (present(d2)) nn=nn+1
  if (present(d3)) nn=nn+1
if (nn==0) return
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
    if (d1(1)%ix1/=1)print *,601
    if (d1(2)%ix1/=3)print *,603
   if (any(d1%ix1/=[1,3]))print *,607
    if (d2(1)%ix1/=1)print *,611
    if (d2(2)%ix1/=3)print *,613
   if (any(d2%ix1/=[1,3]))print *,617
    if (d3(1)%ix1/=1)print *,621
    if (d3(2)%ix1/=3)print *,623
   if (any(d3%ix1/=[1,3]))print *,627
 c1(2)%ix1=c1(2)%ix1+1
 c2(2)%ix1=c2(2)%ix1+1
 c3(2)%ix1=c3(2)%ix1+1
    if (c3(1)%ix1/=1)print *,491
    if (c3(2)%ix1/=3)print *,492
    if (c3(3)%ix1/=3)print *,493
   if (any(c3%ix1/=[1,3,3]))print *,497
 d1(2)%ix1=d1(2)%ix1+1
 d2(2)%ix1=d2(2)%ix1+1
 d3(2)%ix1=d3(2)%ix1+1
    if (c3(1)%ix1/=1)print *,481
    if (c3(2)%ix1/=3)print *,482
    if (c3(3)%ix1/=3)print *,483
   if (any(c3%ix1/=[1,3,3]))print *,487
    if (d1(1)%ix1/=1)print *,631
    if (d1(2)%ix1/=4)print *,633
    if (d2(1)%ix1/=1)print *,641
    if (d2(2)%ix1/=4)print *,643
    if (d3(1)%ix1/=1)print *,651
    if (d3(2)%ix1/=4)print *,653
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
call chk(cy1,cy2,cy3,dy1,dy2,dy3)
if (cy1(1)%ix1/=1)print *,311
if (cy1(2)%ix1/=3)print *,312
if (cy1(3)%ix1/=3)print *,313
if (cy2(1)%ix1/=1)print *,321
if (cy2(2)%ix1/=3)print *,322
if (cy2(3)%ix1/=3)print *,323
if (cy3(1)%ix1/=1)print *,331
if (cy3(2)%ix1/=3)print *,332
if (cy3(3)%ix1/=3)print *,333
if (dy1(1)%ix1/=1)print *,441
if (dy1(2)%ix1/=4)print *,443
if (dy2(1)%ix1/=1)print *,451
if (dy2(2)%ix1/=4)print *,453
if (dy3(1)%ix1/=1)print *,461
if (dy3(2)%ix1/=4)print *,463
call chk()
end
call s1
print *,'pass'
end

