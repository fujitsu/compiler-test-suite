subroutine s0
type x
  integer x1(1000)
  complex, DIMENSION(100, 3) :: a
  integer x2(1000)
end type
type(x),target::v
integer::n(10)=(/1,2,3,4,5,6,7,8,9,10/)
  v%a=3; v%a(:10,:)=(2,2)
  CALL f(10, v%a(n,:))
end
call s0
print *,'pass'
end
  SUBROUTINE f(n, a)
    INTEGER :: n
    complex, DIMENSION(n, 3) :: a
    if (any(abs(a-(2,2))>0.001))write(6,*) "NG"
  END SUBROUTINE f