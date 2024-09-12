module m1
 interface
 function ff(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
 end function
 end interface
end
module m2
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
 import::ff
procedure(ff),pointer,intent(in)::p
end subroutine
end interface
call q( ff )
print *,'pass'
end

subroutine q( p )
use m2
procedure(f),pointer,intent(in)::p
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
if (any( p( a ) /= [1,2]) ) print *,205
end

 function ff(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
