subroutine s0
type x
  LOGICAL(8), DIMENSION(100, 3) :: a
end type
type(x)::v
  v%a=.false.; v%a(:10,:)=.true.
  CALL f(10, v%a( :10, :))
if (v%a(2,3))write(6,*) "NG"
end
call s0
print *,'pass'
end
  SUBROUTINE f(n, a)
    LOGICAL(8), DIMENSION(n, 3) :: a
    if (any(.not.a))write(6,*) "NG"
    a(2, 3) = .false.
  END SUBROUTINE f
