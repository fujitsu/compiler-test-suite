subroutine sub1
integer :: a
a=10
!$omp parallel do
do i=1,1
  if (a/=10) print *,11
  !$omp parallel default(firstprivate)
    if (a/=10) print *,21
    a = 30
  !$omp end parallel
  if (a/=10) print *,31
end do
!$omp end parallel do
if (a/=10) print *,41
end

subroutine sub2
integer a
a=10
!$omp parallel do private(a)
do i=1,1
  a = 20
  !$omp parallel default(firstprivate)
    if (a/=20) print *,22
    a = 30
  !$omp end parallel
  if (a/=20) print *,32
  a=40
end do
!$omp end parallel do
if (a/=10) print *,42
end

subroutine sub3
integer a
a=10
!$omp parallel do firstprivate(a)
do i=1,1
  if (a/=10) print *,13
  a = 20
  !$omp parallel default(firstprivate)
    if (a/=20) print *,23
    a = 30
  !$omp end parallel
  if (a/=20) print *,33
  a=40
end do
!$omp end parallel do
if (a/=10) print *,43
end

subroutine sub4
integer a
a=10
!$omp parallel do lastprivate(a)
do i=1,1
  a = 20
  !$omp parallel default(firstprivate)
    if (a/=20) print *,24
    a = 30
  !$omp end parallel
  if (a/=20) print *,34
  a=40
end do
!$omp end parallel do
if (a/=40) print *,44
end

subroutine sub5
integer :: a
a=10
!$omp parallel do shared(a)
do i=1,1
  if (a/=10) print *,15
  !$omp parallel default(firstprivate)
    if (a/=10) print *,25
    a = 30
  !$omp end parallel
  if (a/=10) print *,35
end do
!$omp end parallel do
if (a/=10) print *,45
end

subroutine sub6
integer :: a
a=10
!$omp parallel do reduction(max:a)
do i=1,1
  a=20
  !$omp parallel default(firstprivate)
    if (a/=20) print *,26
    a = 30
  !$omp end parallel
  if (a/=20) print *,36
end do
!$omp end parallel do
if (a/=20) print *,46
end

subroutine sub7
integer i
i=30
!$omp parallel do 
do i=6,6
  !$omp parallel default(firstprivate)
  if (i/=6) print *,17
  !$omp end parallel
  if (i/=6) print *,27
end do
!$omp end parallel do
if (i/=30) print *,37
end

subroutine sub8
integer :: a
a=10
!$omp parallel do default(shared)
do i=1,1
  if (a/=10) print *,15
  !$omp parallel default(firstprivate)
    if (a/=10) print *,25
    a = 30
  !$omp end parallel
  if (a/=10) print *,35
end do
!$omp end parallel do
if (a/=10) print *,45
end

subroutine sub9
integer a
a=10
!$omp parallel do default(private)
do i=1,1
  a = 20
  !$omp parallel default(firstprivate)
    if (a/=20) print *,22
    a = 30
  !$omp end parallel
  if (a/=20) print *,32
  a=40
end do
!$omp end parallel do
if (a/=10) print *,42
end

subroutine sub10
integer a
a=10
!$omp parallel do default(firstprivate)
do i=1,1
  if (a/=10) print *,13
  a = 20
  !$omp parallel default(firstprivate)
    if (a/=20) print *,23
    a = 30
  !$omp end parallel
  if (a/=20) print *,33
  a=40
end do
!$omp end parallel do
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
call sub10
print *,'pass'
end
