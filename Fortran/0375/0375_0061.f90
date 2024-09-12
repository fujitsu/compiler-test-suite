module m
integer,target::v
bind(c)::v
end
subroutine s1
use,intrinsic::iso_c_binding,only:c_ptr,c_loc
use m
type(c_ptr)::x
x=c_loc(v)
end subroutine
subroutine s2
use,intrinsic::iso_c_binding,only:c_loc
end subroutine
subroutine s21(x_loc)
use,intrinsic::iso_c_binding,only:c_ptr
use m
interface
 function x_loc(v)
   use,intrinsic::iso_c_binding,only:c_ptr
   type(c_ptr)::x_loc
   integer::v
 end function
end interface
type(c_ptr)::x
x=x_loc(v)
end subroutine
call s1
call s2
print *,'pass'
end
