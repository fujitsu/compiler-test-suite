module c_binding
type c_ptr
 integer(8):: p
end type
end 
use c_binding,only:c_ptr
type(c_ptr)::p
interface
  subroutine s1(p)
  use c_binding,only:c_ptr
  type(c_ptr)::p
  end subroutine
  subroutine s2(p)
  use c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call s1(p)
call s2(p)
print *,'pass'
end
subroutine s1(p)
use c_binding,only:c_ptr
type(c_ptr)::p
interface
  subroutine ss(p)
  use c_binding,only:c_ptr
  type(c_ptr),value::p
  end subroutine
end interface
call ss(p)
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
call ss(p)
end
subroutine ss(p)
use c_binding,only:c_ptr
type(c_ptr),value::p
i=loc(p)
i=i+1
end subroutine
