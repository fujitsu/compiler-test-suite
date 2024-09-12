module mm1
  type x
    integer d0
    type(x ),pointer:: d1(:)
    type(x1),pointer:: d2(:)
    type(x2),pointer:: d3(:)
    type(x3),pointer:: d4(:)
  end type
  type x1
    integer e0
    type(x ),pointer:: e1(:)
    type(x1),pointer:: e2(:)
    type(x2),pointer:: e3(:)
    type(x3),pointer:: e4(:)
  end type
  type x2
    integer f0
    type(x ),pointer:: f1(:)
    type(x1),pointer:: f2(:)
    type(x2),pointer:: f3(:)
    type(x3),pointer:: f4(:)
  end type
  type x3
    integer ::g0=2
  end type
type(x),pointer:: v1(:)
type(x)        :: v2(2)
contains
subroutine s
 allocate(v1(2))
 allocate(v1(2)%d1(2))
 allocate(v1(2)%d1(2)%d1(2))
 allocate(v1(2)%d1(2)%d1(2)%d1(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e1(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d1(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d1(2)%d4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d2(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d2(2)%e4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d3(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d3(2)%f4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e2(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e1(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e1(2)%d4(4))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e2(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e2(2)%e4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e3(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e3(2)%f4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e3(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f1(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f1(2)%d4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f2(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f2(2)%e4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f3(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f3(2)%f4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f4(2))
 allocate(v1(2)%d1(2)%d1(2)%d2(2)%e4(2))
 allocate(v1(2)%d1(2)%d1(2)%d3(2))
 allocate(v1(2)%d1(2)%d1(2)%d3(2)%f4(2))
 allocate(v1(2)%d1(2)%d1(2)%d4(2))
 allocate(v1(2)%d1(2)%d2(2))
 allocate(v1(2)%d1(2)%d2(2)%e1(2))
 allocate(v1(2)%d1(2)%d2(2)%e1(2))
 allocate(v1(2)%d1(2)%d2(2)%e1(2)%d1(2))
 allocate(v1(2)%d1(2)%d2(2)%e1(2)%d1(2)%d4(2))
 allocate(v1(2)%d1(2)%d2(2)%e1(2)%d2(2))
 allocate(v1(2)%d1(2)%d2(2)%e1(2)%d2(2)%e4(2))
 allocate(v1(2)%d1(2)%d2(2)%e1(2)%d3(2))
 allocate(v1(2)%d1(2)%d2(2)%e1(2)%d3(2)%f4(2))
 allocate(v1(2)%d1(2)%d2(2)%e1(2)%d4(2))
 allocate(v1(2)%d1(2)%d2(2)%e2(2))
 allocate(v1(2)%d1(2)%d2(2)%e2(2)%e1(2))
 allocate(v1(2)%d1(2)%d2(2)%e2(2)%e1(2)%d4(4))
 allocate(v1(2)%d1(2)%d2(2)%e2(2)%e2(2))
 allocate(v1(2)%d1(2)%d2(2)%e2(2)%e2(2)%e4(2))
 allocate(v1(2)%d1(2)%d2(2)%e2(2)%e3(2))
 allocate(v1(2)%d1(2)%d2(2)%e2(2)%e3(2)%f4(2))
 allocate(v1(2)%d1(2)%d2(2)%e2(2)%e4(2))
 allocate(v1(2)%d1(2)%d2(2)%e3(2))
 allocate(v1(2)%d1(2)%d2(2)%e3(2)%f1(2))
 allocate(v1(2)%d1(2)%d2(2)%e3(2)%f1(2)%d4(2))
 allocate(v1(2)%d1(2)%d2(2)%e3(2)%f2(2))
 allocate(v1(2)%d1(2)%d2(2)%e3(2)%f2(2)%e4(2))
 allocate(v1(2)%d1(2)%d2(2)%e3(2)%f3(2))
 allocate(v1(2)%d1(2)%d2(2)%e3(2)%f3(2)%f4(2))
 allocate(v1(2)%d1(2)%d2(2)%e3(2)%f4(2))
 allocate(v1(2)%d1(2)%d2(2)%e4(2))
 allocate(v1(2)%d1(2)%d3(2))
 allocate(v1(2)%d1(2)%d3(2)%f1(2))
 allocate(v1(2)%d1(2)%d3(2)%f1(2)%d4(2))
 allocate(v1(2)%d1(2)%d3(2)%f2(2))
 allocate(v1(2)%d1(2)%d3(2)%f2(2)%e4(2))
 allocate(v1(2)%d1(2)%d3(2)%f3(2))
 allocate(v1(2)%d1(2)%d3(2)%f3(2)%f4(2))
 allocate(v1(2)%d1(2)%d3(2)%f4(2))
 allocate(v1(2)%d1(2)%d4(2))
 allocate(v1(2)%d2(2))
 allocate(v1(2)%d2(2)%e1(2))
 allocate(v1(2)%d2(2)%e1(2))
 allocate(v1(2)%d2(2)%e1(2)%d1(2))
 allocate(v1(2)%d2(2)%e1(2)%d1(2)%d4(2))
 allocate(v1(2)%d2(2)%e1(2)%d2(2))
 allocate(v1(2)%d2(2)%e1(2)%d2(2)%e4(2))
 allocate(v1(2)%d2(2)%e1(2)%d3(2))
 allocate(v1(2)%d2(2)%e1(2)%d3(2)%f4(2))
 allocate(v1(2)%d2(2)%e1(2)%d4(2))
 allocate(v1(2)%d2(2)%e2(2))
 allocate(v1(2)%d2(2)%e2(2)%e1(2))
 allocate(v1(2)%d2(2)%e2(2)%e1(2)%d4(4))
 allocate(v1(2)%d2(2)%e2(2)%e2(2))
 allocate(v1(2)%d2(2)%e2(2)%e2(2)%e4(2))
 allocate(v1(2)%d2(2)%e2(2)%e3(2))
 allocate(v1(2)%d2(2)%e2(2)%e3(2)%f4(2))
 allocate(v1(2)%d2(2)%e2(2)%e4(2))
 allocate(v1(2)%d2(2)%e3(2))
 allocate(v1(2)%d2(2)%e3(2)%f1(2))
 allocate(v1(2)%d2(2)%e3(2)%f1(2)%d4(2))
 allocate(v1(2)%d2(2)%e3(2)%f2(2))
 allocate(v1(2)%d2(2)%e3(2)%f2(2)%e4(2))
 allocate(v1(2)%d2(2)%e3(2)%f3(2))
 allocate(v1(2)%d2(2)%e3(2)%f3(2)%f4(2))
 allocate(v1(2)%d2(2)%e3(2)%f4(2))
 allocate(v1(2)%d2(2)%e4(2))

 allocate(v1(2)%d3(2))
 allocate(v1(2)%d3(2)%f1(2))
 allocate(v1(2)%d3(2)%f1(2)%d4(2))
 allocate(v1(2)%d3(2)%f2(2))
 allocate(v1(2)%d3(2)%f2(2)%e4(2))
 allocate(v1(2)%d3(2)%f3(2))
 allocate(v1(2)%d3(2)%f3(2)%f4(2))
 allocate(v1(2)%d3(2)%f4(2))
 allocate(v1(2)%d4(2))
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e1(2)%d1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e1(2)%d2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e1(2)%d3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e2(2)%e1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e2(2)%e2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e2(2)%e3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e3(2)%f1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e3(2)%f2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e3(2)%f3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d3(2)%f1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d3(2)%f2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d3(2)%f3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e1(2)%d1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e1(2)%d2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e1(2)%d3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e2(2)%e1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e2(2)%e2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e2(2)%e3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e3(2)%f1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e3(2)%f2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e3(2)%f3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d2(2)%e4%g0/=2))print *,10001

 if(any(v1(2)%d3(2)%f1(2)%d4%g0/=2))print *,10001
 if(any(v1(2)%d3(2)%f2(2)%e4%g0/=2))print *,10001
 if(any(v1(2)%d3(2)%f3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d3(2)%f4%g0/=2))print *,10001
 if(any(v1(2)%d4%g0/=2))print *,10001
end subroutine
end
use mm1
call s
print *,'pass'
end
