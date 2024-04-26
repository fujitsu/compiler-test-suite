module m1
 type x
 integer a1,a2
 end type
 type(x)::v(5)
!$omp threadprivate (v)
contains
subroutine sub

end subroutine
end
use m1
v%a1 = 0
v%a2 = 0

v(2:)%a1=v(:4)%a1+1
write(6,*) v

end
