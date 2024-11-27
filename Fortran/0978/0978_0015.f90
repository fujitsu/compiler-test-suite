subroutine s0
type x
  complex, DIMENSION(100, 3) :: a
end type
type(x)::v
  v%a=3; v%a(:10,:)=(2,2)
  CALL f(10, v%a( :10, :))
if (abs(v%a(2, 3)-(2,3))>0.0001)write(6,*) "NG"
end
call s0
print *,'pass'
end
  SUBROUTINE f(n, a)
    INTEGER :: n
    complex, DIMENSION(n, 3) :: a
    if (any(abs(a-(2,2))>0.001))write(6,*) "NG"
    a(2, 3) = (2,3)
  END SUBROUTINE f
