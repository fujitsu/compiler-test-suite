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
type(x1),target::ty1(3)
type(x2),target::ty2(3)
type(x3),target::ty3(3)
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
  function fty1() result(r)
    class(x1),pointer,dimension(:)::r
    r=>ty1
  end function
  function fty2() result(r)
    class(x1),pointer,dimension(:)::r
    r=>ty2
  end function
  function fty3() result(r)
    class(x1),pointer,dimension(:)::r
    r=>ty3
  end function
end
subroutine s1
use m3
ty1%ix1=[1,2,3]
ty2%ix1=[1,2,3]
ty3%ix1=[1,2,3]
cy1=>fty1()
cy2=>fty2()
cy3=>fty3()
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
if (cy1(1)%ix1/=1)print *,311
if (cy1(2)%ix1/=3)print *,312
if (cy1(3)%ix1/=3)print *,313
if (cy2(1)%ix1/=1)print *,321
if (cy2(2)%ix1/=3)print *,322
if (cy2(3)%ix1/=3)print *,323
if (cy3(1)%ix1/=1)print *,331
if (cy3(2)%ix1/=3)print *,332
if (cy3(3)%ix1/=3)print *,333
end
call s1
print *,'pass'
end

