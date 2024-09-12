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
if (a/=10) print *,11
a=20
!$omp task firstprivate(a)
if (a/=20) print *,21
a=30
!$omp end task
if (a/=20) print *,31
!$omp end task
if (a/=10) print *,41
end

subroutine sub2
integer a
a=10
!$omp task firstprivate(a)
if (a/=10) print *,12
a=20
!$omp task firstprivate(a)
if (a/=20) print *,22
a=30
!$omp end task
if (a/=20) print *,32
!$omp end task
if (a/=10) print *,42
end

subroutine sub3
integer a
a=10
!$omp task default(firstprivate)
if (a/=10) print *,13
a=20
!$omp task firstprivate(a)
if (a/=20) print *,23
a=30
!$omp end task
if (a/=20) print *,33
!$omp end task
if (a/=10) print *,43
end

subroutine sub4
integer a
a=10
!$omp task default(private)
a=20
!$omp task firstprivate(a)
if (a/=20) print *,24
a=30
!$omp end task
if (a/=20) print *,34
!$omp end task
if (a/=10) print *,44
end

subroutine sub5
integer a
a=10
!$omp task private(a)
a=20
!$omp task firstprivate(a)
if (a/=20) print *,25
a=30
!$omp end task
if (a/=20) print *,35
!$omp end task
if (a/=10) print *,45
end

subroutine sub6
integer a
a=10
!$omp task shared(a)
if (a/=10) print *,16
a=20
!$omp task firstprivate(a)
if (a/=20) print *,26
a=30
!$omp end task
if (a/=20) print *,36
!$omp end task
if (a/=20) print *,46
end

subroutine sub7
integer a
a=10
!$omp task default(shared)
if (a/=10) print *,17
a=20
!$omp task firstprivate(a)
if (a/=20) print *,27
a=30
!$omp end task
if (a/=20) print *,37
!$omp end task
if (a/=20) print *,47
end
