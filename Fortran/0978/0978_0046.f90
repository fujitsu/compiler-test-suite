subroutine s0
type x
  integer x1(1000)
  integer, DIMENSION(100, 3) :: a
  integer x2(1000)
end type
type(x),target::v(2)
  v(2)%a=3; v(2)%a(:10,:)=2
  CALL f(10, v(2)%a(1:10,:))
if (v(2)%a(2, 3)/=4)write(6,*) "NG"
end
call s0
print *,'pass'
end
  SUBROUTINE f(n, a)
    INTEGER :: n
    integer, DIMENSION(n, 3) :: a
    if (any(a/=2))write(6,*) "NG"
    a(2, 3) = 4
  END SUBROUTINE f