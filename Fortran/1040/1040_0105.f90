module m1
  integer::x(1),x7(3)
  contains
  function f2() result(r)
  integer::r(3)
  r=(/1,2,3/)
  end function
  function f02(d1) result(r)
  entry    f12() result(r)
  integer::d1(:)
  integer::r(3)
  r=(/1,2,3/)
  end function
end
module m2
use m1
contains
  function g2() result(r)
  integer::r(3)
  r=(/1,2,3/)
  end function
  function g02(d1) result(r)
  entry    g12() result(r)
  integer::d1(:)
  integer::r(3)
  r=(/1,2,3/)
  end function
subroutine s1(dd)
integer::dd(:)
  if (any(f2()/=(/1,2,3/)))write(6,*) "NG"
  if (size(f2())/=3)write(6,*) "NG"
  if (any(lbound(f2())/=1))write(6,*) "NG"
  if (any(ubound(f2())/=3))write(6,*) "NG"
  if (any(f12()/=(/1,2,3/)))write(6,*) "NG"
  if (size(f12())/=3)write(6,*) "NG"
  if (any(lbound(f12())/=1))write(6,*) "NG"
  if (any(ubound(f12())/=3))write(6,*) "NG"
  if (any(f02(dd)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f02(dd))/=3)write(6,*) "NG"
  if (any(lbound(f02(dd))/=1))write(6,*) "NG"
  if (any(ubound(f02(dd))/=3))write(6,*) "NG"
  if (any(g2()/=(/1,2,3/)))write(6,*) "NG"
  if (size(g2())/=3)write(6,*) "NG"
  if (any(lbound(g2())/=1))write(6,*) "NG"
  if (any(ubound(g2())/=3))write(6,*) "NG"
  if (any(g12()/=(/1,2,3/)))write(6,*) "NG"
  if (size(g12())/=3)write(6,*) "NG"
  if (any(lbound(g12())/=1))write(6,*) "NG"
  if (any(ubound(g12())/=3))write(6,*) "NG"
  if (any(g02(dd)/=(/1,2,3/)))write(6,*) "NG"
  if (size(g02(dd))/=3)write(6,*) "NG"
  if (any(lbound(g02(dd))/=1))write(6,*) "NG"
  if (any(ubound(g02(dd))/=3))write(6,*) "NG"
  if (any(h2()/=(/1,2,3/)))write(6,*) "NG"
  if (size(h2())/=3)write(6,*) "NG"
  if (any(lbound(h2())/=1))write(6,*) "NG"
  if (any(ubound(h2())/=3))write(6,*) "NG"
  if (any(h12()/=(/1,2,3/)))write(6,*) "NG"
  if (size(h12())/=3)write(6,*) "NG"
  if (any(lbound(h12())/=1))write(6,*) "NG"
  if (any(ubound(h12())/=3))write(6,*) "NG"
  if (any(h02(dd)/=(/1,2,3/)))write(6,*) "NG"
  if (size(h02(dd))/=3)write(6,*) "NG"
  if (any(lbound(h02(dd))/=1))write(6,*) "NG"
  if (any(ubound(h02(dd))/=3))write(6,*) "NG"
end subroutine
  function h2() result(r)
  integer::r(3)
  r=(/1,2,3/)
  end function
  function h02(d1) result(r)
  entry    h12() result(r)
  integer::d1(:)
  integer::r(3)
  r=(/1,2,3/)
  end function
end
use m2
call s1(x7)
print *,'pass'
end
