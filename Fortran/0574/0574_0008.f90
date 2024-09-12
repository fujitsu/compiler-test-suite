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

integer function test2(p,m,n,fun)
  procedure(integer),optional::fun
  integer,optional::p
  integer::m,n
  if(present(fun))then
  test2=fun(10)
  else
  test2=m+n
  end if
end function

integer function my_func(val)
  integer ::val
  my_func=val*val
end function
end module

use mo
implicit none
if(test1(x=10,y=11,z=12) /=10)print *,101
if(test(m=50,n=50,fun=my_func) /=100) print *,102
print *,"pass"
end
