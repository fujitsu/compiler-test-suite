module m1
contains
function kk( d ,n) result(r)
intent(in)::n
character(*),intent(in):: d(:)
character( n ):: r(size(d))
character :: x(len(d))
x='0'
r='0'
if (len (x)/=len(d)) r= '1'
end function
end
use m1
if (any( kk( ['2','3'],1) /= '0') ) print *,101
print *,'pass'
end
