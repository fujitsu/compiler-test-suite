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
  if (any(in(x7)/=1))write(6,*) "NG"
  if (size(in(x7))/=7)write(6,*) "NG"
  if (any(lbound(in(x7))/=1))write(6,*) "NG"
  if (any(ubound(in(x7))/=7))write(6,*) "NG"
   contains
    function in(d) result(r)
    integer::d(:)
    integer::r(size(d))
    r=1
    end function
  end subroutine
  function f1(d) result(r)
  entry    f2(d) result(r)
  integer::d(:)
  integer::r(size(d))
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
  if (any(in(x7)/=1))write(6,*) "NG"
  if (size(in(x7))/=7)write(6,*) "NG"
  if (any(lbound(in(x7))/=1))write(6,*) "NG"
  if (any(ubound(in(x7))/=7))write(6,*) "NG"
   contains
    function in(d) result(r)
    integer::d(:)
    integer::r(size(d))
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
  if (any(in(x7)/=1))write(6,*) "NG"
  if (size(in(x7))/=7)write(6,*) "NG"
  if (any(lbound(in(x7))/=1))write(6,*) "NG"
  if (any(ubound(in(x7))/=7))write(6,*) "NG"
   contains
    function in(d) result(r)
    integer::d(:)
    integer::r(size(d))
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
  if (any(in(x7)/=1))write(6,*) "NG"
  if (size(in(x7))/=7)write(6,*) "NG"
  if (any(lbound(in(x7))/=1))write(6,*) "NG"
  if (any(ubound(in(x7))/=7))write(6,*) "NG"
print *,'pass'
   contains
    function in(d) result(r)
    integer::d(:)
    integer::r(size(d))
    r=1
    end function
end
