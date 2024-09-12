module m1
contains
 subroutine s1(p) bind(c)
use iso_c_binding
type(c_ptr),value::p
type(c_ptr)::x
  x=p
 end subroutine
 subroutine s2(p) bind(c)
use iso_c_binding
integer    ,value::p
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
