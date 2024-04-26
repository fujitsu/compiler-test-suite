module x
implicit none
interface addi
  module procedure addi_int
  module procedure addi_real
end interface

type ty
integer :: a
end type                
contains
function addi_int(x)
  type(ty):: addi_int
  type(ty) :: x
  addi_int=x
end function

function addi_real(func)
  type(ty):: addi_real
  procedure(type(ty))::func
  addi_real=func(5)
end function

function my_func(ii)
  type(ty) :: my_func
  integer ::ii
  my_func%a=ii
end function
end module


use x
implicit none
type(ty) :: obj1
type(ty) :: obj2
obj1%a=2
obj1=addi(obj1)
obj2=addi(my_func)
if(obj1%a .ne. 2)print*,101
if(obj2%a .ne. 5)print*,102
print *,"pass"
end program

