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
 contains
  subroutine chk(c1,c2,c3)
   class(x1),dimension(3)::c1,c2,c3
    if (c1(1)%ix1/=1)print *,201
    if (c1(2)%ix1/=2)print *,202
    if (c1(3)%ix1/=3)print *,203
    return 
  end subroutine
end
subroutine s1
use m3
type(x1),target::ty1(3)
type(x2),target::ty2(3)
type(x3),target::ty3(3)
cy2=>ty1
cy3=>ty1
ty1%ix1=[1,2,3]
ty2%ix1=[1,2,3]
ty3%ix1=[1,2,3]
cy1=>ty1
if (cy1(1)%ix1/=1)print *,211
if (cy1(2)%ix1/=2)print *,212
if (cy1(3)%ix1/=3)print *,213
if (lbound(cy1,dim=1)/=1)print *,214
if (ubound(cy1,dim=1)/=3)print *,215
call chk(cy1,cy2,cy3)
end
call s1
print *,'pass'
end

