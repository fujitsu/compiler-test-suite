module  m1
  USE,intrinsic:: iso_c_binding
  implicit none
  private
  public:: pi,s1
  type pi
    sequence 
    integer(c_int)::x1
  end type
  contains
  subroutine s1
   type(c_ptr):: y
   type(pi),pointer::ps
   type(pi),target::pt
   allocate(ps)
   y=c_loc(ps%x1)
   if (c_associated(y)) then
   else
    print *,101
   endif
  end subroutine
end
use m1
call s1
print *,'pass'
end

