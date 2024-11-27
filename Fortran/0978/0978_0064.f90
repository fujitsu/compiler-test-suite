subroutine s0
type x
  integer x1(1000)
  integer, DIMENSION(100, 3) :: a
  integer x2(1000)
end type
type(x),parameter::v(3)=(/x(1,2,3),x(1,-2,3),x(1,2,3)/)
  CALL f(30, v(2)%a(:10,:))
contains
  SUBROUTINE f(n, a)
    INTEGER :: n
    integer, DIMENSION(n) :: a
    intent(in)::a,n
    if (any(a/=-2))write(6,*) "NG"
  END SUBROUTINE f
end
call s0
print *,'pass'
end
