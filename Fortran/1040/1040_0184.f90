module m1
  integer::xxx(1,1,3)
  integer,save::var(100)
  integer::k=5
  contains
  subroutine s2
  if (any(f2c(xxx)/=reshape(var(1:70),(/2,5,7/))))write(6,*) "NG"
  end subroutine
  function f1c(d) result(r)
  entry    f2c(d) result(r)
  integer::d(5:,5:,4:)
  integer::r(size(d):4,-1:size(d),-3:+size(d))
  r=reshape((/(var(i),i=1,100)/),(/2,5,7/))
  end function
end
module m2
use m1
end
use m2
var=(/(i, i=1,100)/)
call s2
print *,'pass'
end
