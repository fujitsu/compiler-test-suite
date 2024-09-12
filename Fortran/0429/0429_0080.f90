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
!$omp parallel do
do i=1,1
  if (a/=10) print *,11
  a=20
  !$omp task private(a)
  a=30
  !$omp end task
  if (a/=20) print *,21
end do
!$omp end parallel do
if (a/=20) print *,31
end

subroutine sub2
integer a
a=10
!$omp parallel do default(shared)
do i=1,1
  if (a/=10) print *,12
  a=20
  !$omp task private(a)
  a=30
  !$omp end task
  if (a/=20) print *,22
end do
!$omp end parallel do
if (a/=20) print *,32
end

subroutine sub3
integer a
a=10
!$omp parallel do shared(a)
do i=1,1
  if (a/=10) print *,13
  a=20
  !$omp task private(a)
  a=30
  !$omp end task
  if (a/=20) print *,23
end do
!$omp end parallel do
if (a/=20) print *,33
end

subroutine sub4
integer a
a=10
!$omp parallel do firstprivate(a)
do i=1,1
  if (a/=10) print *,14
  a=20
  !$omp task private(a)
  a=30
  !$omp end task
  if (a/=20) print *,24
end do
!$omp end parallel do
if (a/=10) print *,34
end

subroutine sub5
integer a
a=10
!$omp parallel do default(firstprivate)
do i=1,1
  if (a/=10) print *,15
  a=20
  !$omp task private(a)
  a=30
  !$omp end task
  if (a/=20) print *,25
end do
!$omp end parallel do
if (a/=10) print *,35
end

subroutine sub6
integer a
a=10
!$omp parallel do lastprivate(a)
do i=1,1
  a=20
  !$omp task private(a)
  a=30
  !$omp end task
  if (a/=20) print *,26
end do
!$omp end parallel do
if (a/=20) print *,36
end

subroutine sub7
integer a
a=10
!$omp parallel do private(a)
do i=1,1
  a=20
  !$omp task private(a)
  a=30
  !$omp end task
  if (a/=20) print *,27
end do
!$omp end parallel do
if (a/=10) print *,37
end

subroutine sub8
integer a
a=10
!$omp parallel do default(private)
do i=1,1
  a=20
  !$omp task private(a)
  a=30
  !$omp end task
  if (a/=20) print *,28
end do
!$omp end parallel do
if (a/=10) print *,38
end

subroutine sub9
integer a
a=10
!$omp parallel do reduction(max:a)
do i=1,1
  a=20
  !$omp task private(a)
  a=30
  !$omp end task
  if (a/=20) print *,29
end do
!$omp end parallel do
if (a/=20) print *,39
end
