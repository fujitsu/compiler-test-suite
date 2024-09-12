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
procedure(f),pointer::p
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
p=>f
if (any( p( a ) /= [1,2]) ) print *,205
end

 function ff(d) result(r)
 entry    p (d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
