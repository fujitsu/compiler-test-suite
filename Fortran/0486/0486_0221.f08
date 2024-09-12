module m1
use iso_c_binding
contains
subroutine s1()
type(c_PTR):: v1,v2
character(1),contiguous,pointer:: p(:)
character(1),target:: t(3)
p=>t
p='1'
v1=c_loc(p) 
v2=c_loc(t) 
if (.not. c_associated( v1 , v2)) print *,201
end subroutine
end
use m1
call s1()
print *,'pass'
end
