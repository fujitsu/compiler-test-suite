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
if(a/=10) print *,11
!$omp barrier
a=20
!$omp task private(a)
a=30
!$omp end task
if(a/=20) print *,21
!$omp end parallel
if(a/=20) print *,31
end

subroutine sub2
integer a
a=10
!$omp parallel shared(a)
if(a/=10) print *,12
!$omp barrier
a=20
!$omp task private(a)
a=30
!$omp end task
if(a/=20) print *,22
!$omp end parallel
if(a/=20) print *,32
end

subroutine sub3
integer a
a=10
!$omp parallel default(shared)
if(a/=10) print *,13
!$omp barrier
a=20
!$omp task private(a)
a=30
!$omp end task
if(a/=20) print *,23
!$omp end parallel
if(a/=20) print *,33
end

subroutine sub4
integer a
a=10
!$omp parallel firstprivate(a)
if(a/=10) print *,14
a=20
!$omp task private(a)
a=30
!$omp end task
if(a/=20) print *,24
!$omp end parallel
if(a/=10) print *,34
end

subroutine sub5
integer a
a=10
!$omp parallel default(firstprivate)
if(a/=10) print *,15
a=20
!$omp task private(a)
a=30
!$omp end task
if(a/=20) print *,25
!$omp end parallel
if(a/=10) print *,35
end

subroutine sub6
integer a
a=10
!$omp parallel private(a)
a=20
!$omp task private(a)
a=30
!$omp end task
if(a/=20) print *,26
!$omp end parallel
if(a/=10) print *,36
end

subroutine sub7
integer a
a=10
!$omp parallel default(private)
a=20
!$omp task private(a)
a=30
!$omp end task
if(a/=20) print *,27
!$omp end parallel
if(a/=10) print *,37
end

subroutine sub8
integer a
a=10
!$omp parallel reduction(max:a)
a=20
!$omp task private(a)
a=30
!$omp end task
if(a/=20) print *,27
!$omp end parallel
if(a/=20) print *,37
end
