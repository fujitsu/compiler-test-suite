subroutine s4
 common /com1/ k,n
!$omp threadprivate(/com1/)
k=-1
n=-1
!$omp parallel 

!$omp parallel 
!$omp single
k=1
n=2
!$omp end single copyprivate(k,n)
if (k/=1) print *,431
if (n/=2) print *,432
!$omp end parallel
!$omp end parallel
if (k/=1) print *,451
if (n/=2) print *,452
end

call s4
print *,'pass'
      end
