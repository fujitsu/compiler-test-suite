subroutine sub1
integer a
a = 10
!$omp parallel sections
  if (a/=10) print *,11
  a=20
  !$omp parallel private(a)
  a=30
  !$omp end parallel
  if (a/=20) print *,31
  a=40
!$omp end parallel sections
if (a/=40) print *,41
end

subroutine sub2
integer a
a = 10
!$omp parallel sections private(a)
  a=20
  !$omp parallel private(a)
  a=30
  !$omp end parallel
  if (a/=20) print *,32
  a=40
!$omp end parallel sections
if (a/=10) print *,42
end

subroutine sub3
integer a
a = 10
!$omp parallel sections firstprivate(a)
  if (a/=10) print *,13
  a=20
  !$omp parallel private(a)
  a=30
  !$omp end parallel
  if (a/=20) print *,33
  a=40
!$omp end parallel sections
if (a/=10) print *,43
end

subroutine sub4
integer a
a = 10
!$omp parallel sections lastprivate(a)
  a=20
  !$omp parallel private(a)
  a=30
  !$omp end parallel
  if (a/=20) print *,34
  a=40
!$omp end parallel sections
if (a/=40) print *,44
end

subroutine sub5
integer a
a = 10
!$omp parallel sections reduction(max:a)
  a=20
  !$omp parallel private(a)
  a=30
  !$omp end parallel
  if (a/=20) print *,32
!$omp end parallel sections
if (a/=20) print *,42
end

subroutine sub6
integer a
a = 10
!$omp parallel sections shared(a)
  if (a/=10) print *,11
  a=20
  !$omp parallel private(a)
  a=30
  !$omp end parallel
  if (a/=20) print *,31
  a=40
!$omp end parallel sections
if (a/=40) print *,41
end

subroutine sub7
integer a
a = 10
!$omp parallel sections default(shared)
  if (a/=10) print *,11
  a=20
  !$omp parallel private(a)
  a=30
  !$omp end parallel
  if (a/=20) print *,31
  a=40
!$omp end parallel sections
if (a/=40) print *,41
end

subroutine sub8
integer a
a = 10
!$omp parallel sections private(a)
  a=20
  !$omp parallel private(a)
  a=30
  !$omp end parallel
  if (a/=20) print *,32
  a=40
!$omp end parallel sections
if (a/=10) print *,42
end

subroutine sub9
integer a
a = 10
!$omp parallel sections firstprivate(a)
  if (a/=10) print *,13
  a=20
  !$omp parallel private(a)
  a=30
  !$omp end parallel
  if (a/=20) print *,33
  a=40
!$omp end parallel sections
if (a/=10) print *,43
end

call sub1
call sub2
call sub3
call sub4
call sub5
call sub6
call sub7
call sub8
call sub9
print *,'pass'
end
