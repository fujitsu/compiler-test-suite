module m1
type x
 integer:: x1
 integer,allocatable:: x2
end type
type (x):: v
contains
function if(v)
type (x),value:: v
if=1
if (allocated(v% x2 ) ) if=0
end function
end
use m1
k= if( v ) + if( v ) 
if (k/=2) print *,101,k
print *,'pass'
end
