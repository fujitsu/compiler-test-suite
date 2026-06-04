module m1
  integer,pointer,contiguous::p1(:)
  integer,target    ::t1(2)=1
end
subroutine s1
use m1
!$omp parallel private(p1)
p1=>t1
do concurrent( k1=1:2)
  if (p1(k1)/=1) print *,102
end do
!$omp end parallel
end
call s1
print *,'pass'
end

