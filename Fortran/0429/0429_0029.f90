subroutine sub1
integer a
a=10
!$omp parallel
!$omp single
if (a/=10) print *,11
a=20
!$omp task firstprivate(a)
if (a/=20) print *,21
a=30
!$omp end task
if (a/=20) print *,31
!$omp end single
!$omp end parallel
if (a/=20) print *,41
end

subroutine sub2
integer a
a=10
!$omp parallel
!$omp single firstprivate(a)
if (a/=10) print *,12
a=20
!$omp task firstprivate(a)
if (a/=20) print *,22
a=30
!$omp end task
if (a/=20) print *,32
!$omp end single
!$omp end parallel
if (a/=10) print *,42
end

subroutine sub3
integer a
a=10
!$omp parallel
!$omp single private(a)
a=20
!$omp task firstprivate(a)
if (a/=20) print *,23
a=30
!$omp end task
if (a/=20) print *,33
!$omp end single
!$omp end parallel
if (a/=10) print *,43
end

call sub1
call sub2
call sub3
print *,'pass'
end
