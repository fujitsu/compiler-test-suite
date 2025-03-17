module m1
  type a
    integer::a1=1
    integer,allocatable::a2(:,:)
  end type
  integer,save::var(100)
  integer::x(-5:-1)
  integer::xx(2,3)
  integer::k=5
  contains
  function f1a(d) result(r)
  integer::d(5:,5:)
  integer::r(size(d):11,-1:size(d))
  r=reshape((/(var(i),i=1,100)/),(/6,8/))
  end function
end
use m1
 integer t(6,8)
var=(/(i,i=1,100)/)
  t= f1a(xx)
  if (any(t/=reshape(var(1:48),(/6,8/))))write(6,*) "NG"
print *,'pass'
end
