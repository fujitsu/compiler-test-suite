interface
 function func()
  integer :: func
 end function
end interface

procedure(func),pointer :: pfp
procedure()             :: func2

call sub(pfp, func2, func)

print *,'pass'

contains

subroutine sub(pp,pp2,pp3)
interface
 function func()
  integer :: func
 end function
end interface

procedure(func),pointer :: p1,pp
external :: pp2
procedure(func) :: pp3

procedure(integer),pointer :: pi1

p1=>pp
p1=>pp3

pi1=>pp
pi1=>pp3

end subroutine

end

function func()
 integer :: func
 func = 1
end function

function func2()
 integer :: func2
 func2 = 2
end function
