module m
procedure(fa),pointer :: ptr=>f
contains
function f(d)
integer :: d 
f=d
end function
function fa(d)
integer :: d 
fa=d
end function
end module

use m
i=ptr(7)
print *,'pass'
end
