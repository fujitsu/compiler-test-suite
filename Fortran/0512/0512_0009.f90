module m1
 contains
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
end
use m1
interface
subroutine q( p )
 import::f
 procedure(f)::p
end subroutine
end interface
call q( f )
print *,'pass'
end

subroutine q( p )
 interface
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
 end function
 end interface
procedure(f)::p
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
if (any( p( a ) /= [1,2]) ) print *,205
end
