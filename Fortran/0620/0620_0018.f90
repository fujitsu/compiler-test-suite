module mod1
type ty
integer ii
end type
end module

program main
use mod1

interface
 function funci1(i) result(rst)
  use mod1
  integer :: i
  class(ty), allocatable :: rst
 end function

end interface

procedure(funci1),pointer :: pi1
integer :: i=2

class(ty), allocatable :: ptr

k=0
if (k==1) then
 allocate(ptr, source=pi1(i))
endif

print *,'pass'
end

 function funci1(i) result(rst)
  use mod1
  integer :: i
  class(ty), allocatable :: rst
 end function
