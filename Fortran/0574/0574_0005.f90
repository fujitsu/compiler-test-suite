module mo
implicit none
interface test
  module procedure test1
  module procedure test2
end interface

contains

integer function test1(x,y)
  integer::x
  integer,optional::y
  test1=x
end function

integer function test2(fun)
  procedure(integer)::fun
  test2=fun(10)
end function

integer function my_func(val)
  integer ::val
  my_func=val*val
end function
end module

use mo
implicit none
if(test(1) /=1)print *,101
if(test(my_func) /=100) print *,102
print *,"pass"
end program
