subroutine s0
type x
  character*2, DIMENSION(100, 3) :: a
end type
type(x)::v
  v%a='xx'; v%a(:10,:)='12'
  CALL f(10, v%a( :10, :))
if (v%a(2, 3)/='34')write(6,*) "NG"
end
call s0
print *,'pass'
end
  SUBROUTINE f(n, a)
    INTEGER :: n
    character*2, DIMENSION(n, 3) :: a
    if (any(a/='12'))write(6,*) "NG"
    a(2, 3) = '34'
  END SUBROUTINE f
