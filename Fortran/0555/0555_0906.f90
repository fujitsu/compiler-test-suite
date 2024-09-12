module m
 type :: t
  sequence
  integer :: i
  procedure(foo), pointer,pass(y) :: foo
 end type t
contains
 subroutine foo(x,y,z)
  integer ,optional :: x
  type(t) :: y
  integer ::z
  print*, 'z =', z  
  if(present(x)) then
    print *, 'foo', x, y%i
    if (mod(x+y%i,3)/=2) call abort()
  else
    print *, 'foo', y%i
    if (mod(y%i,3)/=1) call abort()
  end if
 end subroutine foo
end module m

use m
type(t) :: t1, t2
t1%i = 4
t2%i = 7
t1%foo => foo
t2%foo => t1%foo
call t1%foo(z=1)
call t2%foo(z=1) 
end

