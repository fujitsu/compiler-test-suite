subroutine s4
k=-1
n=-1
!$omp parallel private(k,n)
k=0
n=0
!$omp parallel private(n,k)
!$omp single
k=1
n=2
!$omp end single copyprivate(k,n)
if (k/=1) print *,431
if (n/=2) print *,432
!$omp end parallel
if (k/=0) print *,441
if (n/=0) print *,442
!$omp end parallel
if (k/=-1) print *,451
if (n/=-1) print *,452
end

call s4
print *,'pass'
      end
