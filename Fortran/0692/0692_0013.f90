module c_binding
type c_ptr
 integer(8):: p
end type
end 
use c_binding,only:c_ptr
type(c_ptr)::p
interface
  subroutine s2(p)
  use c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
p%p=1
call s2(p)
print *,'pass'
end
subroutine s2(p)
use c_binding,only:c_ptr
type(c_ptr),value::p
interface
  subroutine ss(p)
  use c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
end
