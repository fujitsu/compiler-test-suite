call sub1
call sub2
call sub3
call sub4
call sub5
call sub6
call sub7
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp task
if (a /=10) print *,1
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
if (a /=20) print *,2
!$omp end task
if (a /=10) print *,3
end

subroutine sub2
integer a
a=10
!$omp task shared(a)
if (a /=10) print *,1
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
if (a /=20) print *,2
!$omp end task
if (a /=20) print *,3
end

subroutine sub3
integer a
a=10
!$omp task default(shared)
if (a /=10) print *,1
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
if (a /=20) print *,2
!$omp end task
if (a /=20) print *,3
end

subroutine sub4
integer a
a=10
!$omp task default(firstprivate)
if (a /=10) print *,1
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
if (a /=20) print *,2
!$omp end task
if (a /=10) print *,3
end

subroutine sub5
integer a
a=10
!$omp task firstprivate(a)
if (a /=10) print *,1
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
if (a /=20) print *,2
!$omp end task
if (a /=10) print *,3
end

subroutine sub6
integer a
a=10
!$omp task private(a)
a=15
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
if (a /=20) print *,2
!$omp end task
if (a /=10) print *,3
end

subroutine sub7
integer a
a=10
!$omp task default(private)
a=15
!$omp parallel reduction(max:a)
a=20
!$omp end parallel
if (a /=20) print *,2
!$omp end task
if (a /=10) print *,3
end
