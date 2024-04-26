module m
contains
pure subroutine s1(cptr,t)
   use , intrinsic :: iso_c_binding,only:c_ptr,c_loc
   integer(kind=4), target, intent(inout) :: t
   type(c_ptr),intent(out) :: cptr
   cptr = c_loc(t)
end
end
use m
use , intrinsic :: iso_c_binding,only:c_ptr,c_loc,c_f_pointer
integer(kind=4), target :: t=1
integer,pointer:: p
type(c_ptr) :: cptr
call s1(cptr,t)
call c_f_pointer(cptr,p)
if(p/=1) print *,"error",p

print *,'pass'
end

