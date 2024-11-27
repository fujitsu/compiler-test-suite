module m
  type :: c_ptr
      private
      integer(kind=4):: ptr
   end type c_ptr
contains
subroutine set(p)
type(c_ptr)::p
p%ptr=1
end subroutine
subroutine chk(p)
type(c_ptr)::p
if (p%ptr/=1)write(6,*) "NG"
end subroutine
end
use m
type(c_ptr)::p,pp
call set(pp)
p=pp
call chk(p)
print *,'pass'
end
