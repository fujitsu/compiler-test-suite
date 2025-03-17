module m1
  integer,save::var(100)
  integer::x(-5:-1)
  integer::xx(2,3)
  integer::xxx(1,1,3)
  integer::k=5
  contains
  subroutine s2
  if (any(f1b(xxx)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  end subroutine
  function f1b(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(size(d):4,-1:size(d),-size(d):+size(d))
  r=reshape((/(var(i),i=1,100)/),(/2,5,7/))
  end function
end
use m1
var=(/(i, i=1,100)/)
call s2
print *,'pass'
end
