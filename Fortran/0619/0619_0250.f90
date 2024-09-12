subroutine s0
type x
  integer x1(1000)
  integer, DIMENSION(100, 3) :: a
  integer x2(1000)
end type
type(x),parameter::v(3)=(/x(1,2,3),x(1,-2,3),x(1,2,3)/)
type(x),parameter::vvv=x(1,2,3)
contains
  SUBROUTINE f(n, a)
    INTEGER :: n
    integer, DIMENSION(n) :: a
    intent(in)::a,n
  END SUBROUTINE f
end
call s0
print *,'pass'
end
