module m1
  integer,save::var(100)
  integer::x(-5:-3)
  contains
  function f1a(d) result(r)
  integer::d(4:)
  integer::r(-size(d):3)
  r=reshape((/(var(i),i=1,100)/),(/7/))
  end function
  subroutine s2
  integer w(7)
  if (any(f1a(x)/=reshape(var(1:7),(/7/))))write(6,*) "NG"
  if (any(f1b(x)/=reshape(var(1:7),(/7/))))write(6,*) "NG"
  end subroutine
  function f1b(d) result(r)
  integer::d(4:)
  integer::r(-size(d):3)
  r=reshape((/(var(i),i=1,100)/),(/7/))
  end function
end
use m1
var=(/(i, i=1,100)/)
call s2
print *,'pass'
end
