module m1
  integer::x(1),x7(7)
  contains
  subroutine s2(dd)
  integer::dd(:)
  if (any(f1(x7)/=1))write(6,*) "NG"
  if (size(f1(x7))/=7)write(6,*) "NG"
  if (any(lbound(f1(x7))/=1))write(6,*) "NG"
  if (any(ubound(f1(x7))/=7))write(6,*) "NG"
  if (any(f2(x7)/=1))write(6,*) "NG"
  if (size(f2(x7))/=7)write(6,*) "NG"
  if (any(lbound(f2(x7))/=1))write(6,*) "NG"
  if (any(ubound(f2(x7))/=7))write(6,*) "NG"
  if (any(in(x)/=1))write(6,*) "NG"
  if (size(in(x))/=7)write(6,*) "NG"
  if (any(lbound(in(x))/=1))write(6,*) "NG"
  if (any(ubound(in(x))/=7))write(6,*) "NG"
   contains
    function in(d) result(r)
    integer::d(:)
    integer::r(size(dd))
    r=1
    end function
  end subroutine
  function f9(d1) result(r)
  entry    f2(d2) result(r)
  integer::d1(:),d2(:)
  integer::r(size(d2))
  r=1
  end function
  function f1(d1) result(r)
  entry    f8(d2) result(r)
  integer::d1(:),d2(:)
  integer::r(size(d1))
  r=1
  end function
  subroutine s3(dd)
  integer::dd(:)
  if (any(f1(x7)/=1))write(6,*) "NG"
  if (size(f1(x7))/=7)write(6,*) "NG"
  if (any(lbound(f1(x7))/=1))write(6,*) "NG"
  if (any(ubound(f1(x7))/=7))write(6,*) "NG"
  if (any(f2(x7)/=1))write(6,*) "NG"
  if (size(f2(x7))/=7)write(6,*) "NG"
  if (any(lbound(f2(x7))/=1))write(6,*) "NG"
  if (any(ubound(f2(x7))/=7))write(6,*) "NG"
  if (any(in(x)/=1))write(6,*) "NG"
  if (size(in(x))/=7)write(6,*) "NG"
  if (any(lbound(in(x))/=1))write(6,*) "NG"
  if (any(ubound(in(x))/=7))write(6,*) "NG"
   contains
    function in(d) result(r)
    integer::d(:)
    integer::r(size(dd))
    r=1
    end function
  end subroutine
end
module m2
use m1
contains
subroutine s1(dd)
integer::dd(:)
  if (any(f1(x7)/=1))write(6,*) "NG"
  if (size(f1(x7))/=7)write(6,*) "NG"
  if (any(lbound(f1(x7))/=1))write(6,*) "NG"
  if (any(ubound(f1(x7))/=7))write(6,*) "NG"
  if (any(f2(x7)/=1))write(6,*) "NG"
  if (size(f2(x7))/=7)write(6,*) "NG"
  if (any(lbound(f2(x7))/=1))write(6,*) "NG"
  if (any(ubound(f2(x7))/=7))write(6,*) "NG"
  if (any(in(x)/=1))write(6,*) "NG"
  if (size(in(x))/=7)write(6,*) "NG"
  if (any(lbound(in(x))/=1))write(6,*) "NG"
  if (any(ubound(in(x))/=7))write(6,*) "NG"
   contains
    function in(d) result(r)
    integer::d(:)
    integer::r(size(dd))
    r=1
    end function
end subroutine
end
use m2
call s1(x7)
call s2(x7)
call s3(x7)
  if (any(f1(x7)/=1))write(6,*) "NG"
  if (size(f1(x7))/=7)write(6,*) "NG"
  if (any(lbound(f1(x7))/=1))write(6,*) "NG"
  if (any(ubound(f1(x7))/=7))write(6,*) "NG"
  if (any(f2(x7)/=1))write(6,*) "NG"
  if (size(f2(x7))/=7)write(6,*) "NG"
  if (any(lbound(f2(x7))/=1))write(6,*) "NG"
  if (any(ubound(f2(x7))/=7))write(6,*) "NG"
  if (any(in(x)/=1))write(6,*) "NG"
  if (size(in(x))/=7)write(6,*) "NG"
  if (any(lbound(in(x))/=1))write(6,*) "NG"
  if (any(ubound(in(x))/=7))write(6,*) "NG"
print *,'pass'
   contains
    function in(d) result(r)
    integer::d(:)
    integer::r(size(x7))
    r=1
    end function
end
