module names
interface bill
module procedure fred, jim
end interface
contains
function fred(i)
integer :: i
end function fred
function jim(r)
real :: r
end function jim
end module names
print *,'pass'
end
