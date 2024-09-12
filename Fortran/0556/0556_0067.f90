module m
 type :: t
  integer :: i
 contains
  procedure, pass(y) :: foo
 end type t

contains
 subroutine foo(x,y)
  type(t),optional :: x
  class(t) :: y
  print*, "Pass argument value :", y%i 
  if(present(x)) print *, 'foo 1 -> ', x%i 
 end subroutine foo

end module m

use m
type(t) :: t1, t2
t1%i = 40 
t2%i = 50
t2%i = t2%i -40
call t1%foo()
print*, "Pass"
end
