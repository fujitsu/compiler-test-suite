subroutine s(n)
n=1
k=1
!$omp parallel private(k)
n=1
k=1
!$omp parallel private(k)
n=1
k=1
n=1
k=1
!$omp parallel private(k)
n=1
k=1
!$omp parallel private(k)
n=1
k=1
!$omp end parallel
n=1
k=1
!$omp end parallel
n=1
k=1
n=1
k=1
!$omp end parallel
n=1
k=1
!$omp end parallel
if (n/=1)print *,401
if (k/=1)print *,402
end  subroutine
call s(n)
print *,'pass'
end
