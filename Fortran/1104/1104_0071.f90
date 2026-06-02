type x
  integer::x1
  procedure(sub),pointer,nopass::p
end type
type(x)::v
v%p=>sub
call v%p
print *,'sngg730p : pass'
contains
 subroutine sub
 end
end
