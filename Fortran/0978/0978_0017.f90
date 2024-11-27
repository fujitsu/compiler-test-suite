subroutine s0
type x
  INTEGER, DIMENSION(100, 3) :: a
end type
type(x)::v
  v%a=3; v%a(:10,:)=2
  CALL f(10, v%a( :10, :))
if (v%a(2,3)/=1)write(6,*) "NG"
end
call s0
print *,'pass'
end
  SUBROUTINE f(n, a)
    INTEGER :: n
    INTEGER, DIMENSION(n, 3) :: a
    if (any(a/=2))write(6,*) "NG"
    a(2, 3) = 1
  END SUBROUTINE f
