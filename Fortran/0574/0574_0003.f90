module x
implicit none
interface addi
  module procedure addi_int
  module procedure addi_real
end interface
contains
character function addi_int(x)
  character :: x
  addi_int=x
end function

character(LEN=5) function addi_real(func)
  procedure(character(LEN=5))::func
  addi_real=func("shar")
end function

function my_func(a)
  character(LEN=5)::a,my_func
  my_func=a
end function
end module

use x
implicit none
if(addi('c') /= 'c') print *,101
if(addi(my_func) /= "shar") print *,102
print *,"Pass"
end program
