module z
implicit none
interface addi
  module procedure addi_int
  module procedure addi_real
  module procedure addi_cube
end interface
contains
integer function addi_int(x)
  integer :: x
  addi_int=x
end function

integer function addi_real(func)
  procedure(integer)::func
  addi_real=func(2)
end function

real function addi_cube(func)
  procedure(real*8)::func
  real*8 :: arg=2
  addi_cube=func(arg)
end function

integer function my_func(a)
  integer::a
  my_func=a*a
end function

 function my_func1(a)
  real*8::a,my_func1
  my_func1=a*a*a
end function
end module

use z
implicit none
if(addi(2) /= 2) print *,101
if(addi(my_func) /= 4) print *,102
if(addi(my_func1) /= 8.0) print *,103
print *,"Pass"
end program
