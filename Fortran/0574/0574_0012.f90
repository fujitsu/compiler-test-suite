module mx
implicit none

interface abc
integer function abc_add(a1)
  integer :: a1
end function
end interface

interface abc
integer function abc_mul(func)
  procedure(integer)::func
end function
end interface

contains
function my_func(val)
  integer :: val,my_func
  my_func=val*val
end function

end module

integer function abc_add(a1)
  integer :: a1
  abc_add=a1+a1
end function

integer function abc_mul(func)
  procedure(integer) :: func
  abc_mul=func(5)
end function

function my_func(val)
  integer :: val,my_func
  my_func=val*val
end function

use mx
implicit none
if(abc(5) /= 10)print *,101
if(abc(my_func) /=25)print *,102
print *,"Pass"
end 
