module m1
  integer,save::var(100)
  integer::x(-5:-3)
  contains
  function f1a(d) result(r)
  integer::d(4:)
  integer::r(-size(d):3)
  r=reshape((/(var(i),i=1,100)/),(/7/))
  end function
  function f1c(d) result(r)
  integer::d(4:)
  integer::r(-9:-size(d))
  r=reshape((/(var(i),i=1,100)/),(/7/))
  end function
  function f1e(d) result(r)
  integer::d(4:)
  integer::r(-size(d):-size(d)+6)
  r=reshape((/(var(i),i=1,100)/),(/7/))
  end function
  function f2a(d) result(r)
  integer::d(4:)
  integer::r(3,-size(d):3)
  r=reshape((/(var(i),i=1,100)/),(/3,7/))
  end function
  function f2c(d) result(r)
  integer::d(4:)
  integer::r(3,-9:-size(d))
  r=reshape((/(var(i),i=1,100)/),(/3,7/))
  end function
  function f2e(d) result(r)
  integer::d(4:)
  integer::r(3,-size(d):-size(d)+6)
  r=reshape((/(var(i),i=1,100)/),(/3,7/))
  end function
  function f3a(d) result(r)
  integer::d(4:)
  integer::r(3,-size(d):3,2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f3c(d) result(r)
  integer::d(4:)
  integer::r(3,-9:-size(d),2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f3e(d) result(r)
  integer::d(4:)
  integer::r(3,-size(d):-size(d)+6,2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f4a(d) result(r)
  integer::d(4:)
  integer::r(size(d),-size(d):3,2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f4c(d) result(r)
  integer::d(4:)
  integer::r(size(d),-9:-size(d),2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f4e(d) result(r)
  integer::d(4:)
  integer::r(size(d),-size(d):-size(d)+6,2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  subroutine s2
  integer w(7)
  if (any(f1a(x)/=reshape(var(1:7),(/7/))))write(6,*) "NG"
  if (any(f1b(x)/=reshape(var(1:7),(/7/))))write(6,*) "NG"
  if (any(f1c(x)/=reshape(var(1:7),(/7/))))write(6,*) "NG"
  if (any(f1d(x)/=reshape(var(1:7),(/7/))))write(6,*) "NG"
  if (any(f1e(x)/=reshape(var(1:7),(/7/))))write(6,*) "NG"
  if (any(f1f(x)/=reshape(var(1:7),(/7/))))write(6,*) "NG"
  if (any(f2a(x)/=reshape(var(1:21),(/3,7/))))write(6,*) "NG"
  if (any(f2b(x)/=reshape(var(1:21),(/3,7/))))write(6,*) "NG"
  if (any(f2c(x)/=reshape(var(1:21),(/3,7/))))write(6,*) "NG"
  if (any(f2d(x)/=reshape(var(1:21),(/3,7/))))write(6,*) "NG"
  if (any(f2e(x)/=reshape(var(1:21),(/3,7/))))write(6,*) "NG"
  if (any(f2f(x)/=reshape(var(1:21),(/3,7/))))write(6,*) "NG"
  if (any(f3a(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f3b(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f3c(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f3d(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f3e(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f3f(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f4a(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f4b(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f4c(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f4d(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f4e(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  if (any(f4f(x)/=reshape(var(1:42),(/3,7,2/))))write(6,*) "NG"
  end subroutine
  function f1b(d) result(r)
  integer::d(4:)
  integer::r(-size(d):3)
  r=reshape((/(var(i),i=1,100)/),(/7/))
  end function
  function f1d(d) result(r)
  integer::d(4:)
  integer::r(-9:-size(d))
  r=reshape((/(var(i),i=1,100)/),(/7/))
  end function
  function f1f(d) result(r)
  integer::d(4:)
  integer::r(-size(d):-size(d)+6)
  r=reshape((/(var(i),i=1,100)/),(/7/))
  end function
  function f2b(d) result(r)
  integer::d(4:)
  integer::r(3,-size(d):3)
  r=reshape((/(var(i),i=1,100)/),(/3,7/))
  end function
  function f2d(d) result(r)
  integer::d(4:)
  integer::r(3,-9:-size(d))
  r=reshape((/(var(i),i=1,100)/),(/3,7/))
  end function
  function f2f(d) result(r)
  integer::d(4:)
  integer::r(3,-size(d):-size(d)+6)
  r=reshape((/(var(i),i=1,100)/),(/3,7/))
  end function
  function f3b(d) result(r)
  integer::d(4:)
  integer::r(3,-size(d):3,2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f3d(d) result(r)
  integer::d(4:)
  integer::r(3,-9:-size(d),2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f3f(d) result(r)
  integer::d(4:)
  integer::r(3,-size(d):-size(d)+6,2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f4b(d) result(r)
  integer::d(4:)
  integer::r(size(d),-size(d):3,2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f4d(d) result(r)
  integer::d(4:)
  integer::r(size(d),-9:-size(d),2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
  function f4f(d) result(r)
  integer::d(4:)
  integer::r(size(d),-size(d):-size(d)+6,2)
  r=reshape((/(var(i),i=1,100)/),(/3,7,2/))
  end function
end
use m1
var=(/(i, i=1,100)/)
call s2
print *,'pass'
end
