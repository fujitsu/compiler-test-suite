module m
 type :: t
  integer :: i
 contains
  procedure, pass(y) :: foo
 end type t

contains
 subroutine foo(y,x,a,b,c,d)
  type(t),optional :: x
  class(t) :: y
  integer,optional :: a,b,c,d
  print*, "Pass argument value :", y%i 
  if(present(a)) print *, 'foo 2 -> ', a
  if(present(b)) print *, 'foo 3 -> ', b
  if(present(c)) print *, 'foo 4 -> ', c
  if(present(d)) print *, 'foo 5 -> ', d
 end subroutine foo

end module m

use m
type(t) :: t1, t2
t1%i = 40 
t2%i = 50
call t1%foo()
call t1%foo(t2,1)
call t1%foo(t2,1,2)
call t1%foo(t2,1,2,3)
call t1%foo(t2,1,2,3,4)

call t2%foo(t1)
call t2%foo(t1,5)
call t2%foo(t1,5,6)
call t2%foo(t1,5,6,7)
call t2%foo(t1,5,6,7,8)
end

