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
  character(len=:),pointer :: rst
 end function
end interface

xx = fun(funci1)
if (xx/=5) print *,901
print *,'pass'
contains
function fun(pi1)
interface
 function pi1(i) result(rst)
  use mod1
  integer :: i
  character(len=:),pointer :: rst
 end function
end interface

integer :: i=2

character(len=:),pointer :: ptr

 allocate(ptr, source=pi1(i))
 if (ptr/='PPP')print *,101
 fun = 5
end function
end

 function funci1(i) result(rst)
  use mod1
  integer :: i
  character(len=:),pointer :: rst
 allocate(character(len=3)::rst)
 rst = "PPP"
 end function
