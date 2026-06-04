module m1
contains
  function f1(xxx)
    integer :: xxx(:)
    integer f1(sizeof(X=xxx))
    f1=999
  end function
end
use m1
integer,allocatable :: x1(:),x2(:)
allocate(x1(1),x2(4))
x2=f1(x1)
if (x2(1).ne.999) print *,"fail"
print *,"pass"
end
