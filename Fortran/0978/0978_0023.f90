subroutine s0
type x
  integer x1(1000)
  character(5), DIMENSION(100, 3) :: a
  integer x2(1000)
end type
type(x),target::v
  v%a='x'; v%a(:10,:)='12345'
  CALL f(10, ff())
contains
function ff() result(r)
  character(5), pointer,DIMENSION(:, :) :: r
  r=>v%a(:10,:)
end function
end
call s0
print *,'pass'
end
  SUBROUTINE f(n, a)
    INTEGER :: n
    character*(*), DIMENSION(n, 3) :: a
    if (any(a/='12345'))write(6,*) "NG"
  END SUBROUTINE f
