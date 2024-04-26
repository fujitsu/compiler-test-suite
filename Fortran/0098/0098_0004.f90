module m1
type ty

contains
end type
type ty2
contains
end type
end

use m1
integer :: x = 1
type ty3
integer :: t3
contains
end type
if(x /=1) print *,101
print *,"Pass"
contains
end
