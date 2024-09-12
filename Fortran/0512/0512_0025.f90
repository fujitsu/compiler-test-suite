module m1
 contains
 function f(d) result(r)
 entry    e(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
end
use m1
type x
procedure(e),nopass,pointer::p
end type
type(x)::v
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
v%p=>e
if (any( v%p( a ) /= [1,2]) ) print *,205
print *,'pass'
end

 function p(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
