module mod
integer:: var
integer,parameter::var1=1
contains
subroutine sub
do i=1,var
end do
end subroutine
end module

use mod
integer:: var2
integer,parameter::var3=2
do i=1,10
end do
do i=1,10
end do
do i=1,10
end do
print *,'pass'
end
