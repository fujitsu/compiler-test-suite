module m1
contains
 subroutine w1(p)
use iso_c_binding
 entry      s1(p) bind(c)
type(c_ptr)::p
type(c_ptr)::x
  x=p
 end subroutine
 subroutine w2(p)
use iso_c_binding
 entry      s2(p) bind(c)
integer    ::p
  x=p
 end subroutine
end
use m1
use iso_c_binding
type(c_ptr)::p
integer,target::t
p=c_loc(t)
i=1
call s1(p)
call s2(i)
print *,'pass'
end
