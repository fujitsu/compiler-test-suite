module m1
  integer::x(1),y(3)
  contains
  function f01(d1) result(r); integer::d1(:)
  integer::r(size(d1))
  r=(/1,2,3/)
  end function
  function f02(d1) result(r); integer::d1(:)
  integer::r(size((d1)))
  r=(/1,2,3/)
  end function
  function f03(d1) result(r); integer::d1(:)
  integer::r(+size(d1))
  r=(/1,2,3/)
  end function
  function f04(d1) result(r); integer::d1(:)
  integer::r(size((+d1)))
  r=(/1,2,3/)
  end function
  function f05(d1) result(r); integer::d1(:)
  integer::r(size(+d1))
  r=(/1,2,3/)
  end function
  function f06(d1) result(r); integer::d1(:)
  integer::r(size(d1-1))
  r=(/1,2,3/)
  end function
  function f07(d1) result(r); integer::d1(:)
  integer::r(size(d1(:)))
  r=(/1,2,3/)
  end function
end
module m2
use m1
contains
  function g01(d1) result(r); integer::d1(:)
  integer::r(size(d1))
  r=(/1,2,3/)
  end function
  function g02(d1) result(r); integer::d1(:)
  integer::r(size((d1)))
  r=(/1,2,3/)
  end function
  function g03(d1) result(r); integer::d1(:)
  integer::r(+size(d1))
  r=(/1,2,3/)
  end function
  function g04(d1) result(r); integer::d1(:)
  integer::r(size((+d1)))
  r=(/1,2,3/)
  end function
  function g05(d1) result(r); integer::d1(:)
  integer::r(size(+d1))
  r=(/1,2,3/)
  end function
  function g06(d1) result(r); integer::d1(:)
  integer::r(size(d1-1))
  r=(/1,2,3/)
  end function
  function g07(d1) result(r); integer::d1(:)
  integer::r(size(d1(:)))
  r=(/1,2,3/)
  end function
subroutine s1(d)
integer::d(:)
  if (any(f01(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f01(d))/=3)write(6,*) "NG"
  if (any(lbound(f01(d))/=1))write(6,*) "NG"
  if (any(ubound(f01(d))/=3))write(6,*) "NG"
  if (any(f02(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f02(d))/=3)write(6,*) "NG"
  if (any(lbound(f02(d))/=1))write(6,*) "NG"
  if (any(ubound(f02(d))/=3))write(6,*) "NG"
  if (any(f03(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f03(d))/=3)write(6,*) "NG"
  if (any(lbound(f03(d))/=1))write(6,*) "NG"
  if (any(ubound(f03(d))/=3))write(6,*) "NG"
  if (any(f03(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f03(d))/=3)write(6,*) "NG"
  if (any(lbound(f03(d))/=1))write(6,*) "NG"
  if (any(ubound(f03(d))/=3))write(6,*) "NG"
  if (any(f04(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f04(d))/=3)write(6,*) "NG"
  if (any(lbound(f04(d))/=1))write(6,*) "NG"
  if (any(ubound(f04(d))/=3))write(6,*) "NG"
  if (any(f05(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f05(d))/=3)write(6,*) "NG"
  if (any(lbound(f05(d))/=1))write(6,*) "NG"
  if (any(ubound(f05(d))/=3))write(6,*) "NG"
  if (any(f06(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f06(d))/=3)write(6,*) "NG"
  if (any(lbound(f06(d))/=1))write(6,*) "NG"
  if (any(ubound(f06(d))/=3))write(6,*) "NG"
  if (any(f07(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(f07(d))/=3)write(6,*) "NG"
  if (any(lbound(f07(d))/=1))write(6,*) "NG"
  if (any(ubound(f07(d))/=3))write(6,*) "NG"
  if (any(g01(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(g01(d))/=3)write(6,*) "NG"
  if (any(lbound(g01(d))/=1))write(6,*) "NG"
  if (any(ubound(g01(d))/=3))write(6,*) "NG"
  if (any(g02(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(g02(d))/=3)write(6,*) "NG"
  if (any(lbound(g02(d))/=1))write(6,*) "NG"
  if (any(ubound(g02(d))/=3))write(6,*) "NG"
  if (any(g03(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(g03(d))/=3)write(6,*) "NG"
  if (any(lbound(g03(d))/=1))write(6,*) "NG"
  if (any(ubound(g03(d))/=3))write(6,*) "NG"
  if (any(g03(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(g03(d))/=3)write(6,*) "NG"
  if (any(lbound(g03(d))/=1))write(6,*) "NG"
  if (any(ubound(g03(d))/=3))write(6,*) "NG"
  if (any(g04(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(g04(d))/=3)write(6,*) "NG"
  if (any(lbound(g04(d))/=1))write(6,*) "NG"
  if (any(ubound(g04(d))/=3))write(6,*) "NG"
  if (any(g05(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(g05(d))/=3)write(6,*) "NG"
  if (any(lbound(g05(d))/=1))write(6,*) "NG"
  if (any(ubound(g05(d))/=3))write(6,*) "NG"
  if (any(g06(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(g06(d))/=3)write(6,*) "NG"
  if (any(lbound(g06(d))/=1))write(6,*) "NG"
  if (any(ubound(g06(d))/=3))write(6,*) "NG"
  if (any(g07(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(g07(d))/=3)write(6,*) "NG"
  if (any(lbound(g07(d))/=1))write(6,*) "NG"
  if (any(ubound(g07(d))/=3))write(6,*) "NG"
  if (any(h01(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(h01(d))/=3)write(6,*) "NG"
  if (any(lbound(h01(d))/=1))write(6,*) "NG"
  if (any(ubound(h01(d))/=3))write(6,*) "NG"
  if (any(h02(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(h02(d))/=3)write(6,*) "NG"
  if (any(lbound(h02(d))/=1))write(6,*) "NG"
  if (any(ubound(h02(d))/=3))write(6,*) "NG"
  if (any(h03(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(h03(d))/=3)write(6,*) "NG"
  if (any(lbound(h03(d))/=1))write(6,*) "NG"
  if (any(ubound(h03(d))/=3))write(6,*) "NG"
  if (any(h03(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(h03(d))/=3)write(6,*) "NG"
  if (any(lbound(h03(d))/=1))write(6,*) "NG"
  if (any(ubound(h03(d))/=3))write(6,*) "NG"
  if (any(h04(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(h04(d))/=3)write(6,*) "NG"
  if (any(lbound(h04(d))/=1))write(6,*) "NG"
  if (any(ubound(h04(d))/=3))write(6,*) "NG"
  if (any(h05(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(h05(d))/=3)write(6,*) "NG"
  if (any(lbound(h05(d))/=1))write(6,*) "NG"
  if (any(ubound(h05(d))/=3))write(6,*) "NG"
  if (any(h06(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(h06(d))/=3)write(6,*) "NG"
  if (any(lbound(h06(d))/=1))write(6,*) "NG"
  if (any(ubound(h06(d))/=3))write(6,*) "NG"
  if (any(h07(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(h07(d))/=3)write(6,*) "NG"
  if (any(lbound(h07(d))/=1))write(6,*) "NG"
  if (any(ubound(h07(d))/=3))write(6,*) "NG"
  if (any(w01(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(w01(d))/=3)write(6,*) "NG"
  if (any(lbound(w01(d))/=1))write(6,*) "NG"
  if (any(ubound(w01(d))/=3))write(6,*) "NG"
  if (any(w02(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(w02(d))/=3)write(6,*) "NG"
  if (any(lbound(w02(d))/=1))write(6,*) "NG"
  if (any(ubound(w02(d))/=3))write(6,*) "NG"
  if (any(w03(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(w03(d))/=3)write(6,*) "NG"
  if (any(lbound(w03(d))/=1))write(6,*) "NG"
  if (any(ubound(w03(d))/=3))write(6,*) "NG"
  if (any(w03(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(w03(d))/=3)write(6,*) "NG"
  if (any(lbound(w03(d))/=1))write(6,*) "NG"
  if (any(ubound(w03(d))/=3))write(6,*) "NG"
  if (any(w04(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(w04(d))/=3)write(6,*) "NG"
  if (any(lbound(w04(d))/=1))write(6,*) "NG"
  if (any(ubound(w04(d))/=3))write(6,*) "NG"
  if (any(w05(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(w05(d))/=3)write(6,*) "NG"
  if (any(lbound(w05(d))/=1))write(6,*) "NG"
  if (any(ubound(w05(d))/=3))write(6,*) "NG"
  if (any(w06(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(w06(d))/=3)write(6,*) "NG"
  if (any(lbound(w06(d))/=1))write(6,*) "NG"
  if (any(ubound(w06(d))/=3))write(6,*) "NG"
  if (any(w07(d)/=(/1,2,3/)))write(6,*) "NG"
  if (size(w07(d))/=3)write(6,*) "NG"
  if (any(lbound(w07(d))/=1))write(6,*) "NG"
  if (any(ubound(w07(d))/=3))write(6,*) "NG"
contains
  function w01(d1) result(r); integer::d1(:)
  integer::r(size(d1))
  r=(/1,2,3/)
  end function
  function w02(d1) result(r); integer::d1(:)
  integer::r(size((d1)))
  r=(/1,2,3/)
  end function
  function w03(d1) result(r); integer::d1(:)
  integer::r(+size(d1))
  r=(/1,2,3/)
  end function
  function w04(d1) result(r); integer::d1(:)
  integer::r(size((+d1)))
  r=(/1,2,3/)
  end function
  function w05(d1) result(r); integer::d1(:)
  integer::r(size(+d1))
  r=(/1,2,3/)
  end function
  function w06(d1) result(r); integer::d1(:)
  integer::r(size(d1-1))
  r=(/1,2,3/)
  end function
  function w07(d1) result(r); integer::d1(:)
  integer::r(size(d1(:)))
  r=(/1,2,3/)
  end function
end subroutine
  function h01(d1) result(r); integer::d1(:)
  integer::r(size(d1))
  r=(/1,2,3/)
  end function
  function h02(d1) result(r); integer::d1(:)
  integer::r(size((d1)))
  r=(/1,2,3/)
  end function
  function h03(d1) result(r); integer::d1(:)
  integer::r(+size(d1))
  r=(/1,2,3/)
  end function
  function h04(d1) result(r); integer::d1(:)
  integer::r(size((+d1)))
  r=(/1,2,3/)
  end function
  function h05(d1) result(r); integer::d1(:)
  integer::r(size(+d1))
  r=(/1,2,3/)
  end function
  function h06(d1) result(r); integer::d1(:)
  integer::r(size(d1-1))
  r=(/1,2,3/)
  end function
  function h07(d1) result(r); integer::d1(:)
  integer::r(size(d1(:)))
  r=(/1,2,3/)
  end function
end
use m2
y=1
call s1(y)
print *,'pass'
end
