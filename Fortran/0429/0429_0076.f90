call sub1
call sub2
call sub3
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp parallel
!$omp single
if (a/=10) print *,11
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,21
!$omp end single
!$omp end parallel
if (a/=20) print *,31
end

subroutine sub2
integer a
a=10
!$omp parallel firstprivate(a)
!$omp single
if (a/=10) print *,12
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,22
!$omp end single
!$omp end parallel
if (a/=10) print *,32
end

subroutine sub3
integer a
a=10
!$omp parallel private(a)
!$omp single
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,23
!$omp end single
!$omp end parallel
if (a/=10) print *,33
end
