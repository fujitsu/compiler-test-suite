module m1
contains
  function f1(xxx)
    integer(8) :: xxx(:),yyy(4)
    integer f1(sizeof(X=xxx))
    integer f2(sizeof(X=yyy))
    f2=99
    do i=1,size(f1)
      f1(i)=f2(i)
    enddo
  end function
  function f2(zzz)
    real*8  :: zzz(:),www(4)
    integer f2(sizeof(X=zzz))
    integer f3(sizeof(X=www))
    f3=999
    do i=1,size(f2)
      f2(i)=f3(i)
    enddo
  end function
end
use m1
integer*8 :: x1(32)
real*8 :: y2(32)
integer*8,allocatable :: x(:)
real*8,allocatable :: y(:)
allocate(x(sizeof(1)))
allocate(y(sizeof(1)))
x1=f1(x)
y2=f2(y)
do i=1,size(x1)
  if (x1(i).ne.99) print *,"fail"
  if (y2(i).ne.999) print *,"fail"
enddo
print *,"pass"
end
