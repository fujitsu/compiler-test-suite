module m
 type :: t
  integer :: i
 contains
  procedure, pass(y) :: foo
 end type t

contains
 subroutine foo(y, x)
  type(t),optional :: x
  class(t) :: y
  if(present(x)) then
    print *, 'foo', x%i, y%i
  else
    print *, 'foo', y%i
  end if
 end subroutine foo

end module m

use m
type(t) :: t1, t2
t1%i = 3
t2%i = 4
call t1%foo()
call t2%foo()
call t1%foo(t2)
end

