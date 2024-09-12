module mo
implicit none
interface test
  module procedure test1
  module procedure test2
end interface
contains
integer function test1(x,y,z,z1)
  integer::x
  integer,optional::y,z,z1
test1=x
end function
integer function test2(p,fun,m,n)
  procedure(integer)::fun
  integer,optional::p,m,n
  test2=fun(10)
end function

integer function my_func(val)
 integer ::val
 my_func=val*val
 end function
end module

use mo
implicit none
procedure(integer),pointer :: p
p=>my_func
if(test(fun=p,n=11) /=100) print *,102
print *,"pass"
end program
