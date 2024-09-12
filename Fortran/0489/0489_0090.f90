module m1
 type x
   integer,allocatable:: x2(:)
 end type
contains
function   kk( c1)
 type (x),value:: c1(2)
character(1):: kk
c1(1)%x2=1
kk='1'
end function
end

use m1
 type (x):: v1(2)
allocate( v1(1)% x2(2) ,source=100)
allocate( v1(2)% x2(2) ,source=100)
if (kk( v1) /='1') print *,901
if(any(v1(1)%x2 /= 100)) print *,101
if(any(v1(2)%x2 /= 100)) print *,101
print *,'pass'
end
