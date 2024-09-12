module m1
use iso_c_binding
contains
subroutine sub
integer,target:: s
integer,pointer:: p
call c_f_pointer ( c_loc( s ) , p)
if (.not.associated(p,s)) print *,1001
end
end
use m1
call sub
print *,'pass'
end
