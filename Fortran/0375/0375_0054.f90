interface
  subroutine s1(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr)::p
  end subroutine
  subroutine s2(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call s1(p())
call s2(p())
print *,'pass'
contains 
function p() 
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr),pointer::p
allocate(p)
end function
end
subroutine s1(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr)::p
interface
  subroutine ss(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call ss(p)
end
subroutine s2(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr),value::p
interface
  subroutine ss(p)
  use,intrinsic::iso_c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call ss(p)
end
subroutine ss(p)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr),value::p
i=loc(p)
i=i+1
end subroutine
