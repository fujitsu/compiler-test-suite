module moda
type ty1
integer,allocatable :: i(:)[:]
end type
type(ty1) :: str
private :: str
end
module mod
use moda
contains
subroutine sub1_1()
end subroutine
end

use mod
call sub1_1()
print *,'pass'
end
