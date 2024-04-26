module  m1
  USE,intrinsic:: iso_c_binding
  implicit none
  private
  public:: pi
  type pi
    sequence 
    integer(c_int)::x1
  end type
  type pi2
    sequence 
    type(pi),pointer::x2
  end type
  contains
  subroutine s1
   type(c_ptr):: y
   type(pi2)::ps
   type(pi),target::pt
   y=c_loc(ps%x2%x1)
   if (c_associated(y)) then
   else
    print *,101
   endif
  end subroutine
end
use m1
print *,'pass'
end

