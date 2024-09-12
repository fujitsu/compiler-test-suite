call sub1
call sub2
call sub3
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp parallel
if (a/=10) print *,11
!$omp barrier
!$omp sections reduction(max:a)
a=20
!$omp end sections
if (a/=20) print *,21
!$omp end parallel
if (a/=20) print *,31
end

subroutine sub2
integer a
a=10
!$omp parallel shared(a)
if (a/=10) print *,12
!$omp barrier
!$omp sections reduction(max:a)
a=20
!$omp end sections
if (a/=20) print *,22
!$omp end parallel
if (a/=20) print *,32
end

subroutine sub3
integer a
a=10
!$omp parallel default(shared)
if (a/=10) print *,13
!$omp barrier
!$omp sections reduction(max:a)
a=20
!$omp end sections
if (a/=20) print *,23
!$omp end parallel
if (a/=20) print *,33
end
