subroutine sub1
integer a
a=10
!$omp parallel 
if (a/=10) print *,11
!$omp barrier
a=20
!$omp sections firstprivate(a)
if (a/=20) print *,21
a=30
!$omp end sections
if (a/=20) print *,31
!$omp end parallel 
if (a/=20) print *,41
end

subroutine sub2
integer a
a=10
!$omp parallel shared(a)
if (a/=10) print *,12
!$omp barrier
a=20
!$omp sections firstprivate(a)
if (a/=20) print *,22
a=30
!$omp end sections
if (a/=20) print *,32
!$omp end parallel 
if (a/=20) print *,42
end

subroutine sub3
integer a
a=10
!$omp parallel default(shared)
if (a/=10) print *,13
!$omp barrier
a=20
!$omp sections firstprivate(a)
if (a/=20) print *,23
a=30
!$omp end sections
if (a/=20) print *,33
!$omp end parallel 
if (a/=20) print *,43
end

call sub1
call sub2
call sub3
print *,'pass'
end
