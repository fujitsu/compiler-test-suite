module mod
integer:: var
integer,parameter::var1=1
end module

use mod
do i=1,var
end do
end

subroutine sub
use mod
integer x
do i=1,var
end do
end

