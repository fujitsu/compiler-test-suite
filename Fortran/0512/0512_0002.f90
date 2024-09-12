module m1
 contains
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
end
use m1
integer,allocatable::a(:)
procedure(f),pointer::p
type x
procedure(f),pointer,nopass::p
end type
type(x)::v
allocate(a(2),source=[1,2])
if (any( f( a ) /= [1,2]) ) print *,202

p=>f
if (any( p( a ) /= [1,2]) ) print *,203

v%p=>f
if (any( v%p( a ) /= [1,2]) ) print *,204

print *,'pass'
end
