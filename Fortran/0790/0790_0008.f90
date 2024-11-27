module moda
type ty1
integer,allocatable :: i(:)
end type
end
module mod
use moda
integer,allocatable:: coarray(:) [:,:]
integer:: coarray2 [1:*]
contains
subroutine sub1_1()
type(ty1) :: str
save
end subroutine
end

use mod
call sub1_1()
print *,'pass'
end
