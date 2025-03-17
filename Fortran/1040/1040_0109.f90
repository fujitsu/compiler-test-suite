module m1
  integer::x(1),y(3)
  contains
  function f01(d1) result(r); integer::d1(:)
  integer::r(ubound(d1,1))
  r=(/1,2,3/)
  end function
end
module m2
use m1
contains
subroutine s1(d)
integer::d(:)
  if (any(f01(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f01(d))/=3)write(6,*) "NG"
  if (any(lbound(f01(d))/=1))write(6,*) "NG"
  if (any(ubound(f01(d))/=3))write(6,*) "NG"
end subroutine
end
use m2
y=1
call s1(y)
print *,'pass'
end
