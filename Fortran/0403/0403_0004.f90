subroutine s1
      common /com1/ k,n
!$omp threadprivate(/com1/)

!$omp parallel
k=0
n=0
!$omp single
k=1
n=2
!$omp end single copyprivate(/com1/)
if (k/=1) print *,101
if (n/=2) print *,102
!$omp end parallel
end
subroutine s2
      common /com2/ k,n
!$omp threadprivate(/com2/)

k=0
n=0
!$omp parallel 
!$omp single
k=1
n=2
!$omp end single copyprivate(k,n)
if (k/=1) print *,111
if (n/=2) print *,112
!$omp end parallel
if (k/=1) print *,121
if (n/=2) print *,122
end
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

call s1
call s2
call s3
call s4
print *,'pass'
      end
