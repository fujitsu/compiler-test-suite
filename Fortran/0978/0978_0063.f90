subroutine s0
type x
  integer x1(1000)
  integer, DIMENSION(100, 3) :: a
  integer x2(1000)
end type
type(x),target::v(3)
  v(1)%a=3; v(2)%a=3; v(3)%a=3; v(2)%a(:10,:)=2
  CALL f(30, v(2)%a(:10,:))
if (v(2)%a(2, 2)/=4)write(6,*) "NG"
contains
  SUBROUTINE f(n, a)
    INTEGER :: n
    integer, DIMENSION(n) :: a
    if (any(a/=2))write(6,*) "NG"
    a(12) = 4
  END SUBROUTINE f
end
call s0
print *,'pass'
end