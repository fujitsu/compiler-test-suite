module m1
      common /com2/ k,n
pointer ::n(:)
!$omp threadprivate(/com2/)
end
subroutine s2
use m1

!$omp parallel 
allocate(n(2))
k=0
n=0
!$omp single
k=1
n=2
!$omp end single copyprivate(k,n)
if (k/=1) print *,111
if (any(n/=2)) print *,112
!$omp end parallel
if (k/=1) print *,121
if (any(n/=2)) print *,122
end
call s2
print *,'pass'
end
