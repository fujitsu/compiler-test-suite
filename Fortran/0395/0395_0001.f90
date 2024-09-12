module m1
use iso_c_binding,only:c_ptr,c_loc
contains
subroutine s1(x)
type (c_ptr)::cp(2),x
target::z
cp=c_loc(z)
x=cp(2)
end subroutine
end
subroutine s
 use m1
type (c_ptr)::x
call s1(x)
end
call s
print *,'pass'
end
