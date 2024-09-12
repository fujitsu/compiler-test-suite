module y
implicit none
interface addi
  module procedure addi_int
  module procedure addi_real
end interface
contains
integer function addi_int(x,y)
  integer :: x,y
  addi_int=x+y
end function

integer function addi_real(val,func)
  integer :: val
  procedure(integer)::func
  addi_real=func(2)+val
end function

integer function my_func(a)
  integer::a
  my_func=a*a
end function
end module

use y
implicit none
if(addi(2,3) /= 5) print *,101
if(addi(1,my_func) /= 5) print *,102
print *,"Pass"
end program
