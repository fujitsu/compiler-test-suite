call sub1
call sub2
call sub3
call sub4
call sub5
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp sections
if (a/=10) print *,11
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,21
!$omp end sections
if (a/=20) print *,31
end

subroutine sub2
integer a
a=10
!$omp sections firstprivate(a)
if (a/=10) print *,12
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,22
!$omp end sections
if (a/=10) print *,32
end

subroutine sub3
integer a
a=10
!$omp sections private(a)
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,23
!$omp end sections
if (a/=10) print *,33
end

subroutine sub4
integer a
a=10
!$omp sections lastprivate(a)
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,24
!$omp end sections
if (a/=20) print *,34
end

subroutine sub5
integer a
a=10
!$omp sections lastprivate(a)
a=20
!$omp task private(a)
a=30
!$omp end task
if (a/=20) print *,25
!$omp end sections
if (a/=20) print *,35
end
