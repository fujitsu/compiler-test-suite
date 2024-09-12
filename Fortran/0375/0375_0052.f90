use,intrinsic::iso_c_binding,only:c_ptr
type x
 integer dummy
 type(c_ptr),pointer::p
end type
type(x)::p1
type xx
  integer dummy
  type(x)::p1
end type
type(xx)::p2
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
allocate(p1%p)
allocate(p2%p1%p)
call s1(p1%p)
call s2(p1%p)
call s1(p2%p1%p)
call s2(p2%p1%p)
print *,'pass'
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
