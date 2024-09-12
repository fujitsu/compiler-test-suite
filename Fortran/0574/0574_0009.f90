module mmm
implicit none
interface cal
  module procedure cal_add_1
  module procedure cal_sub_1
end interface
interface
function int_func(m)
  integer ::  int_func        
  integer,intent(in):: m
end function
end interface

contains 

integer function cal_add_1(a)
  integer::a
  cal_add_1=a+1
end function 

integer function cal_sub_1(fun)
  procedure(int_func)::fun
  cal_sub_1=fun(5)
end function

integer function my_func(val)
  integer,intent(in) :: val
  my_func=val-1
end function

end module

function int_func(m)
  integer ::  int_func        
  integer,intent(in):: m
  int_func=m
end function

use mmm
implicit none

if(cal(2) /= 3) print *,101
if(cal(my_func) /= 4) print *,102
print *,"Pass"
end program
