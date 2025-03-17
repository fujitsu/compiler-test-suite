module m1
  integer,save::var(100)
  integer::x(-5:-3)
  contains
  subroutine s2
  integer w(7)
  w=f1c(x)
  if (any(w/=reshape(var(1:7),(/7/))))write(6,*) "NG"
  end subroutine
  function f1c(d) result(r)
  integer::d(4:)
  integer::r(-size(d):+size(d))
  r=reshape((/(var(i),i=1,100)/),(/7/))
  end function
end
use m1
var=(/(i, i=1,100)/)
call s2
print *,'pass'
end
