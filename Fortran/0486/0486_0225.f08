pure subroutine s1
use iso_c_binding
integer,target:: x
type(c_ptr):: p
x=1
p=c_loc(x)
end
call s1
print *,'pass'
end
