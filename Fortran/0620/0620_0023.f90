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
  character(len=3),allocatable :: rst
 end function
end interface

xx = fun(funci1)
print *,'pass'
contains
function fun(pi1)
interface
 function pi1(i) result(rst)
  use mod1
  integer :: i
  character(len=3),allocatable :: rst
 end function
end interface

integer :: i=2

character(len=:),allocatable :: ptr

 allocate(ptr, source=pi1(i))
 if (ptr/='PPP')print *,102
 fun = 5
end function
end

 function funci1(i) result(rst)
  use mod1
  integer :: i
  character(len=3),allocatable :: rst
 allocate(character(len=3)::rst)
 rst = "PPP"
 end function