call sub1
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp parallel sections
if (a/=10) print *,11
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,21
!$omp end parallel sections
if (a/=20) print *,31
end

subroutine sub2
integer a
a=10
!$omp parallel sections shared(a)
if (a/=10) print *,12
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,22
!$omp end parallel sections
if (a/=20) print *,32
end

subroutine sub3
integer a
a=10
!$omp parallel sections default(shared)
if (a/=10) print *,13
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,23
!$omp end parallel sections
if (a/=20) print *,33
end

subroutine sub4
integer a
a=10
!$omp parallel sections firstprivate(a)
if (a/=10) print *,14
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,24
!$omp end parallel sections
if (a/=10) print *,34
end

subroutine sub5
integer a
a=10
!$omp parallel sections default(firstprivate)
if (a/=10) print *,15
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,25
!$omp end parallel sections
if (a/=10) print *,35
end

subroutine sub6
integer a
a=10
!$omp parallel sections default(private)
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,26
!$omp end parallel sections
if (a/=10) print *,36
end

subroutine sub7
integer a
a=10
!$omp parallel sections private(a)
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,27
!$omp end parallel sections
if (a/=10) print *,37
end

subroutine sub8
integer a
a=10
!$omp parallel sections lastprivate(a)
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,28
!$omp end parallel sections
if (a/=20) print *,38
end

subroutine sub9
integer a
a=10
!$omp parallel sections reduction(max:a)
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,29
!$omp end parallel sections
if (a/=20) print *,39
end
