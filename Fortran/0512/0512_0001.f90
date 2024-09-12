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
allocate(a(2),source=[1,2])
if (any( f( a ) /= [1,2]) ) print *,202

print *,'pass'
end
