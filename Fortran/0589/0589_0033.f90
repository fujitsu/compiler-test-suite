integer, target :: var(2)
f(2) = 100  
call sub(f(2))  
if (var(2) /= 500)print*,101
print *,"Pass"
contains
function f(key) result(res)
   integer, intent(in) :: key
   integer, pointer    :: res
   res=>var(key)
end function

subroutine sub(x)
  integer :: x
  x = x*5    
end subroutine sub
end
