module m1
  integer,save::var(100)
  integer::x(3)
  contains
  function f2c(d) result(r)
  integer::d(:)
  integer::r(+size(d))
  r=reshape((/(var(i),i=1,100)/),(/3/))
  end function
end
use m1
var=(/(i, i=1,100)/)
  if (any(f2c(x)/=(/1,2,3/)))write(6,*) "NG"
print *,'pass'
end
