module moda
real  :: var
real  :: array(2)
pointer (ptr,var)
private :: ptr
contains
subroutine sub_set()
ptr = loc(array)
end subroutine
subroutine sub_add()
ptr = ptr+4
end subroutine
subroutine sub_print()
if(any(array/=2)) print *,201 
end subroutine
end

use moda
call sub_set()
var = 2.0
call sub_add()
var = 2.0
call sub_print()
print *,'pass'
end
