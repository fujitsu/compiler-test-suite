module m1
 contains
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
end
use m1
if (any( f( [1,2] ) /= [1,2]) ) print *,202

print *,'pass'
end
