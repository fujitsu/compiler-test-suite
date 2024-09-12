subroutine s3
k=0
n=0
!$omp parallel private(n,k)
!$omp single
k=1
n=2
!$omp end single copyprivate(k,n)
if (k/=1) print *,131
if (n/=2) print *,132
!$omp end parallel
if (k/=0) print *,141
if (n/=0) print *,142
end
call s3
print *,'pass'
      end
