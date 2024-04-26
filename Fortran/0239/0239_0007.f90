module  m1
  USE,intrinsic:: iso_c_binding
  implicit none
  type pi
    sequence
    integer(c_int)::x1
  end type
  contains
  subroutine s1
   type(c_ptr):: y
   type(pi),pointer::ps
   allocate(ps)
   associate (var=>ps)
    y=c_loc(var%x1)
    if (c_associated(y)) then
    else
     print *,101
   endif
   end associate
  end subroutine
end
use m1
call s1
print *,'pass'
end


