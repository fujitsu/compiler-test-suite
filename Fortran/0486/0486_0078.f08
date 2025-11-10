subroutine s1
      common /com1/ k,n
pointer ::n(:)
!$omp threadprivate(/com1/)

!$omp parallel
allocate(n(2))
k=0
n=0
!$omp single
k=1
n=2
!$omp end single copyprivate(/com1/)
if (k/=1) print *,101
if (any(n/=2)) print *,102
!$omp end parallel
end
subroutine s2
      common /com2/ k,n
pointer ::n(:)
!$omp threadprivate(/com2/)

allocate(n(2))
k=0
n=0
!$omp parallel copyin(n)
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
subroutine s3
pointer ::n(:)
allocate(n(2))
k=0
n=0
!$omp parallel private(n,k)
!$omp single
k=1
allocate(n(2))
n=2
!$omp end single copyprivate(k,n)
if (k/=1) print *,131
if (any(n/=2)) print *,132
!$omp end parallel
if (k/=0) print *,141
if (any(n/=0)) print *,142
end
call s1
call s2
call s3
print *,'pass'
end
