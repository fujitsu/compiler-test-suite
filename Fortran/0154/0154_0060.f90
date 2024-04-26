module m1
type x(p1)
 integer,kind::p1
 integer::x1(p1)
end type
type (x(2))::b
!$omp threadprivate(b)
end
subroutine s1()
use m1
save
b%x1(2)=2
!$omp parallel
  if (b%x1(2)/=2) print *,102
!$omp end parallel 
end
print *,'pass'
end
