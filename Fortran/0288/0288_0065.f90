call test()
print *,'pass'
end
subroutine test()
interface
function equals (a, b)
implicit none
logical :: equals
real, intent(in) :: a, b
endfunction equals
end interface
if (equals(1.0,2.0)   )print *,'err'
end
function equals (a, b)
implicit none
logical :: equals
real, intent(in) :: a, b
real :: eps
eps = abs(a) * epsilon(a)
if (eps == 0) then
eps = tiny (a)
end if
if (abs(a-b) > eps) then
equals = .false.
else
equals = .true.
end if
return
end function equals
