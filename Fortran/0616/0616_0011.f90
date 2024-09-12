module m1
real        ,save,allocatable :: a(:)
!$omp threadprivate(a)
end
subroutine s1
use m1
if (allocated(a))then 
  print *,101
  if (abs(a(1)-1)>0.001)print *,501
endif
!$omp parallel
if (allocated(a))then 
  print *,601
  if (abs(a(1)-1)>0.001)print *,602
endif
allocate(a(2))
a = 1.0
if (abs(a(1)-1)>0.001)print *,201
if (abs(a(2)-1)>0.001)print *,301
!$omp end parallel

!$omp parallel
if (abs(a(1)-1)>0.001)print *,201
if (abs(a(2)-1)>0.001)print *,301
!$omp end parallel

end

call s1
print *,'pass'
end
