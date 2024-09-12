subroutine sub1()
integer :: a
a=10
!$omp parallel
  if (a/=10) print *,11
  !$omp do firstprivate(a)
  do i=1,1
    if (a/=10) print *,21
    a=20
  end do
  !$omp end do
  if (a/=10) print *,31
  !$omp barrier
  a=30
!$omp end parallel
if (a/=30) print *,41
end

subroutine sub2()
integer :: a
a=10
!$omp parallel shared(a)
  if (a/=10) print *,12
  !$omp do firstprivate(a)
  do i=1,1
    if (a/=10) print *,22
    a=20
  end do
  !$omp end do
  if (a/=10) print *,32
  !$omp barrier
  a=30
!$omp end parallel
if (a/=30) print *,42
end

subroutine sub3()
integer :: a
a=10
!$omp parallel default(shared)
  if (a/=10) print *,13
  !$omp do firstprivate(a)
  do i=1,1
    if (a/=10) print *,23
    a=20
  end do
  !$omp end do
  if (a/=10) print *,33
  !$omp barrier
  a=30
!$omp end parallel
if (a/=30) print *,43
end

subroutine sub5()
integer :: a
a=10
!$omp parallel default(firstprivate)
  if (a/=10) print *,15
  !$omp do firstprivate(a)
  do i=1,1
    if (a/=10) print *,25
    a=20
  end do
  !$omp end do
  if (a/=10) print *,35
  a=30
!$omp end parallel
if (a/=10) print *,45
end

call sub1
call sub2
call sub3
call sub5
print *,'pass'
end
