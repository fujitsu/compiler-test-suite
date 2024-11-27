subroutine s0
type x
  integer x1(1000)
  integer, DIMENSION(100, 3) :: a
  integer x2(1000)
end type
type(x)::v(3)=(/x(1,2,3),x(1,-2,3),x(1,2,3)/)
  CALL w(v(2)%a(:10,:))
  CALL f(v(2)%a(:10,:))
contains
  SUBROUTINE f(a)
    integer, DIMENSION(30) :: a
    if (any(a/=-2))write(6,*) "NG"
  END SUBROUTINE f
  SUBROUTINE w(a)
    integer, DIMENSION(30) :: a
    intent(in)::a
    if (any(a/=-2))write(6,*) "NG"
  END SUBROUTINE w
end
call s0
print *,'pass'
end
