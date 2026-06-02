module m1
contains
  function f1(xxx)
    integer(8) :: xxx(:)
    integer f1(sizeof(X=xxx))
    f1=99
  end function
  function f2(zzz)
    real*8  :: zzz(:)
    integer f2(sizeof(X=zzz))
    f2=999
  end function
end
use m1
integer*8,allocatable :: x1(:)
real*8,allocatable :: y1(:)
integer*8,allocatable :: x(:)
real*8,allocatable :: y(:)
allocate(x1(sizeof(1)))
allocate(y1(sizeof(1)))
allocate(x(sizeof(x1)))
allocate(y(sizeof(y1)))
x=f1(x1)
y=f2(y1)
if (x(1).ne.99) print *,"fail"
if (x(2).ne.99) print *,"fail"
if (x(3).ne.99) print *,"fail"
if (x(4).ne.99) print *,"fail"
if (y(1).ne.999) print *,"fail"
if (y(2).ne.999) print *,"fail"
if (y(3).ne.999) print *,"fail"
if (y(4).ne.999) print *,"fail"
print *,"pass"
end
