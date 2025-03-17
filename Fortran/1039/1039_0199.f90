subroutine s4
type x
  INTEGER, DIMENSION(:, :) , POINTER :: a
  INTEGER, DIMENSION(100, 3) :: t
end type
type(x),target::v(2)
  v(2)%t(:10,:)=2
  v(2)%a=>v(2)%t(:10,:)
  CALL f(v(2)%a)
end
call s4
print *,'pass'
end
  SUBROUTINE f(a)
    INTEGER :: n
    INTEGER, DIMENSION(10, 3) :: a
    if (any(a/=2))write(6,*) "NG"
  END SUBROUTINE f
