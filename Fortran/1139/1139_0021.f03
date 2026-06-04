module m0
  type base
    integer::b1
  end type
end
module m11
  use m0
  type,extends(base)::ex11
    integer,allocatable::e11a
  end type
contains
  subroutine s1(d1,d2)
    type(ex11),allocatable,intent(inout)::d1
    type(ex11),intent(in)::d2
    allocate(d1,source=d2)
  end subroutine
end
subroutine s0
use m11
type(ex11),allocatable::v11
type(ex11),allocatable::v12
allocate(ex11::v12)
    v12%b1=1
    allocate(v12%e11a)
    v12%e11a=11
call s1(v11,v12)
    !print '("v12%e11a ",z16.16)',loc(v12%e11a)
    !print '("v11%e11a ",z16.16)',loc(v11%e11a)
    v12%e11a=-11
    if (v11%e11a/=11) print *,1001,v11%e11a
end
call s0
print *,'sngg221k : pass'
end

