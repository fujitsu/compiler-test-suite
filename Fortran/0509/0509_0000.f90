module m1
 contains
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
end
use m1
 procedure(f),pointer::p
integer::a(2)=[1,2]
p=>f
if (any( p( a ) /= [1,2]) ) print *,205
print *,'pass'
end
