call sub1
call sub2
call sub3
call sub4
call sub5
call sub6
call sub7
call sub8
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp parallel
if (a/=10) print *,31
!$omp barrier
a=20
!$omp sections private(a)
a=30
!$omp end sections
if (a/=20) print *,11
!$omp end parallel
if (a/=20) print *,21
end

subroutine sub2
integer a
a=10
!$omp parallel shared(a)
if (a/=10) print *,32
!$omp barrier
a=20
!$omp sections private(a)
a=30
!$omp end sections
if (a/=20) print *,12
!$omp end parallel
if (a/=20) print *,22
end

subroutine sub3
integer a
a=10
!$omp parallel default(shared)
if (a/=10) print *,33
!$omp barrier
a=20
!$omp sections private(a)
a=30
!$omp end sections
if (a/=20) print *,13
!$omp end parallel
if (a/=20) print *,23
end

subroutine sub4
integer a
a=10
!$omp parallel private(a)
a=20
!$omp sections private(a)
a=30
!$omp end sections
if (a/=20) print *,14
!$omp end parallel
if (a/=10) print *,24
end

subroutine sub5
integer a
a=10
!$omp parallel default(private)
a=20
!$omp sections private(a)
a=30
!$omp end sections
if (a/=20) print *,15
!$omp end parallel
if (a/=10) print *,25
end

subroutine sub6
integer a
a=10
!$omp parallel default(firstprivate)
if (a/=10) print *,36
a=20
!$omp sections private(a)
a=30
!$omp end sections
if (a/=20) print *,16
!$omp end parallel
if (a/=10) print *,26
end

subroutine sub7
integer a
a=10
!$omp parallel firstprivate(a)
if (a/=10) print *,37
a=20
!$omp sections private(a)
a=30
!$omp end sections
if (a/=20) print *,17
!$omp end parallel
if (a/=10) print *,27
end

subroutine sub8
integer a
a=10
!$omp parallel reduction(max:a)
a=20
!$omp sections private(a)
a=30
!$omp end sections
if (a/=20) print *,18
!$omp end parallel
if (a/=20) print *,28
end
