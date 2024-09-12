module m1
contains
pure subroutine ss(d,x)
integer,intent(out)::x
procedure(f)::d
x=d(1)
end subroutine
  pure function  f(w) result(r)
   integer:: r
   integer,intent(in):: w
   r=w
  end function
pure subroutine tt(p,x)
integer,intent(out)::x
integer,pointer::p(:)
x=p(1)
end subroutine
end
use m1
integer:: z
integer,pointer::p(:)
call ss(f,z)
if (z/=1) print *,101
allocate(p(1),source=2)
call tt(p,z)
if (z/=2) print *,102
print *,'pass'
end
