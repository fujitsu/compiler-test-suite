module m1
use iso_c_binding
contains
subroutine ss(d)
type(*),target::d
type(c_ptr)::p
p= c_loc(d)
end
end
subroutine s1
use m1
integer:: x
call ss(d)
end
call s1
print *,'pass'
end
