module m1
 type x
   integer,allocatable:: x1
 end type
 type (x):: v1(3)
integer::k1=1,k2=2,k3=3
contains
subroutine sub( c1)
 type (x):: c1(*)
if (allocated(c1(1)%x1)) print *,101 
if (allocated(c1(2)%x1)) print *,101 
end subroutine
end

use m1
allocate(v1(2)%x1 ,source=1)
 call sub( v1(k1:k3:k2) ) 
print *,'pass'
end
