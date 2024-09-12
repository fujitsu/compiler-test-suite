module m1
 interface
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
 end function
 end interface
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
 interface
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
 end function
 end interface
type x
procedure(f),pointer,nopass    ::p
end type
type (x)::v
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
v%p=>f
if (any( v%p( a ) /= [1,2]) ) print *,205
end

 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
