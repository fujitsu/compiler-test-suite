call sub1
call sub2
call sub3
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp sections
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
!$omp end sections
if (a/=20) print *,3
end

subroutine sub2
integer a
a=10
!$omp sections firstprivate(a)
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
!$omp end sections
if (a/=10) print *,3
end

subroutine sub3
integer a
a=10
!$omp sections private(a)
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
!$omp end sections
if (a/=10) print *,3
end

subroutine sub4
integer a
a=10
!$omp sections lastprivate(a)
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
!$omp end sections
if (a/=20) print *,3
end

subroutine sub5
integer a
a=10
!$omp sections reduction(max:a)
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
!$omp end sections
if (a/=20) print *,3
end
