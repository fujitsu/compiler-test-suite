subroutine s0
type x
  integer x1(1000)
  integer, DIMENSION(100, 3) :: a
  integer x2(1000)
end type
type(x),target::v(3)
  v(1)%a=3; v(2)%a=3; v(3)%a=3; v(2)%a(:10,3)=2
  CALL f(10, v(2)%a(:10,3))
contains
  SUBROUTINE f(n, a)
    INTEGER :: n
    integer, DIMENSION(10) :: a
    intent(in)::a,n
    if (any(a/=2))write(6,*) "NG"
  END SUBROUTINE f
end
call s0
print *,'pass'
end
