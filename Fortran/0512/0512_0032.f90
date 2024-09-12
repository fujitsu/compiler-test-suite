module m1
interface
 module function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
 end function
 end interface
end
submodule (m1) smod
contains
 module function f(d) result(r)
   integer,intent(in)::d(:)
   integer::r(size(d))
   r=d
 end function
end
use m1
procedure(f),pointer::p
integer,allocatable::a(:)
allocate(a(2),source=[1,2])
p=>f
if (any( p( a ) /= [1,2]) ) print *,205
print *,'pass'
end
