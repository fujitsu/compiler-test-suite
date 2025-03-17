module m1
  integer::y(3)
  contains
  function f01(i1,d) result(r); integer::d(:)
  integer::r(size(d))
  r=(/i1,2,3/)
  end function
  function f02(i1,i2,d) result(r); integer::d(:)
  integer::r(size(d))
  r=(/i1,i2,3/)
  end function
  function f03(i1,i2,i3,d) result(r); integer::d(:)
  integer::r(size(d))
  r=(/i1,i2,i3/)
  end function
end
module m2
use m1
contains
subroutine s1(d)
integer::d(:)
  if (any(f01(1,d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f01(1,d))/=3)write(6,*) "NG"
  if (any(lbound(f01(1,d))/=1))write(6,*) "NG"
  if (any(ubound(f01(1,d))/=3))write(6,*) "NG"
  if (any(f02(1,2,d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f02(1,2,d))/=3)write(6,*) "NG"
  if (any(lbound(f02(1,2,d))/=1))write(6,*) "NG"
  if (any(ubound(f02(1,2,d))/=3))write(6,*) "NG"
  if (any(f03(1,2,3,d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f03(1,2,3,d))/=3)write(6,*) "NG"
  if (any(lbound(f03(1,2,3,d))/=1))write(6,*) "NG"
  if (any(ubound(f03(1,2,3,d))/=3))write(6,*) "NG"
end subroutine
end
use m2
y=1
call s1(y)
print *,'pass'
end
