module m1
  integer::x(1),x7(7)
  contains
  function f9(k1,d1) result(r)
  entry    f2(k1,k2,d2) result(r)
  integer::d1(:),d2(:)
  integer::r(size(d2))
  r=1
  end function
  function f09(k1,d1) result(r)
  entry    f12(k1,k2,k3,d1) result(r)
  entry    f02(k1,k2,k3,k4,k5,d2) result(r)
  entry    f22(k1,k2,d1) result(r)
  integer::d1(:),d2(:)
  integer::r(size(d2))
  r=1
  end function
end
module m2
use m1
contains
subroutine s1(dd)
integer::dd(:)
  if (any(f2(1,2,x7)/=1))write(6,*) "NG"
  if (size(f2(1,2,x7))/=7)write(6,*) "NG"
  if (any(lbound(f2(1,2,x7))/=1))write(6,*) "NG"
  if (any(ubound(f2(1,2,x7))/=7))write(6,*) "NG"
  if (any(f02(1,2,3,4,5,x7)/=1))write(6,*) "NG"
  if (size(f02(1,2,3,4,5,x7))/=7)write(6,*) "NG"
  if (any(lbound(f02(1,2,3,4,5,x7))/=1))write(6,*) "NG"
  if (any(ubound(f02(1,2,3,4,5,x7))/=7))write(6,*) "NG"
end subroutine
end
use m2
call s1(x7)
print *,'pass'
end
