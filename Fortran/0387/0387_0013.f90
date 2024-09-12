module mod
type ty1
 integer :: i
end type
type ty2
 integer :: i
end type
end module

use mod

interface
 function proc(x) result(y)
  use mod
  type(ty1) :: x,y
 end function
 subroutine sub(x)
  interface
   function proc(x) result(y)
    use mod
    type(ty1) :: x,y
   end function
  end interface
  procedure(proc), pointer :: x
 end subroutine
end interface

integer :: i

procedure(proc), pointer :: p
p => proc
call sub(p)

print *,'pass'

end

function proc(x) result(y)
 use mod
 type(ty1) :: x,y
 y=x
end function

subroutine sub(x)
 interface
  function proc(x) result(y)
   use mod
   type(ty1) :: x,y
  end function
 end interface
 procedure(proc), pointer :: x
end subroutine
