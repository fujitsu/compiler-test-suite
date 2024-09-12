module mm1
  type x
    integer d1
    type(x1),pointer:: d2(:)
  end type
  type x1
    integer e1
    type(x2),pointer:: e2(:)
  end type
  type x2
    integer f1
    type(x3),pointer:: f2(:)
  end type
  type x3
    integer ::g1=2
  end type
type(x),pointer:: v1(:)
type(x)        :: v2(2)
contains
subroutine s
 allocate(v1(2))
 allocate(v1(2)%d2(2))
 allocate(v1(2)%d2(2)%e2(2))
 allocate(v1(2)%d2(2)%e2(2)%f2(2))
 if (v1(2)%d2(2)%e2(2)%f2(1)%g1/=2) print *,101
 if (v1(2)%d2(2)%e2(2)%f2(2)%g1/=2) print *,102
 allocate(v2(2)%d2(2))
 allocate(v2(2)%d2(2)%e2(2))
 allocate(v2(2)%d2(2)%e2(2)%f2(2))
 if (v2(2)%d2(2)%e2(2)%f2(1)%g1/=2) print *,201
 if (v2(2)%d2(2)%e2(2)%f2(2)%g1/=2) print *,202
end subroutine
end
use mm1
call s
print *,'pass'
end
