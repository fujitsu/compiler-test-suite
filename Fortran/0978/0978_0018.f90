module m1
type y
  INTEGER, DIMENSION(100, 3) :: a
end type
end
subroutine s0
use m1
type x
  type(y), DIMENSION(100, 3) :: a
end type
type(x)::v
  v%a=y(3); v%a(:10,:)=y(2)
  CALL f(10, v%a( :10, :))
if (any(v%a(2,3)%a/=1))write(6,*) "NG"
end
call s0
print *,'pass'
end
  SUBROUTINE f(n, a)
use m1
    INTEGER :: n
type(y), DIMENSION(n, 3) :: a
    do n1=1,n;do n2=1,3
    if (any(a(n1,n2)%a/=2))write(6,*) "NG"
    end do;end do
    a(2, 3) = y(1)
  END SUBROUTINE f
