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
subroutine q(  )
end subroutine
end interface
call q(  )
print *,'pass'
end

subroutine q(  )
use m2
type x
procedure(f),nopass,pointer::p
end type
type(x)::v
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
v%p=>f
if (any( v%p( a ) /= [1,2]) ) print *,205
end

 function ff(d) result(r)
 entry    p (d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
