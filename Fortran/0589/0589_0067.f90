module m
type ty
  real*8::alc
contains
        generic :: assignment(=) => vassign
        procedure :: vassign
end type
interface
        subroutine vassign(to, from)
        import ty
        class(ty),intent(inout)::to
        real,intent(in)::from
        end subroutine
end interface
type(ty),target::targ=ty(11.11)
end module

use m
type(ty),pointer::obj1
type(ty),pointer::obj2
obj2=>targ
allocate(obj1)
obj1%alc=22.11
f()=100.11
if (targ%alc /= 100.11) print *,103
print *,"Pass"
contains
        function f()
        type(ty),pointer::f
        allocate(f,source=obj1)
        targ=f
        end function
end

subroutine vassign(to, from)
  use m 
  class(ty),intent(inout)::to
  real,intent(in)::from
  if (to%alc /= 22.11 ) print *,101
  to%alc = from
  targ%alc = to%alc
  if (targ%alc /= 100.11) print *,102
end subroutine
