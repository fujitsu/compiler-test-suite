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
allocate(a(2),source=[1,2])

p=>f
if (any( p( a ) /= [1,2]) ) print *,203

print *,'pass'
end
