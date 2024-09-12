module m1
 contains
 function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
end
use m1
procedure(f)::p
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
if (any( p( a ) /= [1,2]) ) print *,205
print *,'pass'
end

 function p(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
