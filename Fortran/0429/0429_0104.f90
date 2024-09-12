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

subroutine sub1
integer a
a=10
!$omp parallel do
do i=1,1
  if (a/=10) print *,1
  !$omp parallel reduction(max:a)
  a=20
  !$omp end parallel
  if (a/=20) print *,2
end do
if (a/=20) print *,3
end

subroutine sub2
integer a
a=10
!$omp parallel do shared(a)
do i=1,1
  if (a/=10) print *,1
  !$omp parallel reduction(max:a)
  a=20
  !$omp end parallel
  if (a/=20) print *,2
end do
if (a/=20) print *,3
end

subroutine sub3
integer a
a=10
!$omp parallel do default(shared)
do i=1,1
  if (a/=10) print *,1
  !$omp parallel reduction(max:a)
  a=20
  !$omp end parallel
  if (a/=20) print *,2
end do
if (a/=20) print *,3
end

subroutine sub4
integer a
a=10
!$omp parallel do firstprivate(a)
do i=1,1
  if (a/=10) print *,1
  !$omp parallel reduction(max:a)
  a=20
  !$omp end parallel
  if (a/=20) print *,2
end do
if (a/=10) print *,3
end

subroutine sub5
integer a
a=10
!$omp parallel do default(firstprivate)
do i=1,1
  if (a/=10) print *,1
  !$omp parallel reduction(max:a)
  a=20
  !$omp end parallel
  if (a/=20) print *,2
end do
if (a/=10) print *,3
end

subroutine sub6
integer a
a=10
!$omp parallel do default(private)
do i=1,1
  a=15
  !$omp parallel reduction(max:a)
  a=20
  !$omp end parallel
  if (a/=20) print *,2
end do
if (a/=10) print *,3
end

subroutine sub7
integer a
a=10
!$omp parallel do private(a)
do i=1,1
  a=15
  !$omp parallel reduction(max:a)
  a=20
  !$omp end parallel
  if (a/=20) print *,2
end do
if (a/=10) print *,3
end

subroutine sub8
integer a
a=10
!$omp parallel do lastprivate(a)
do i=1,1
  a=15
  !$omp parallel reduction(max:a)
  a=20
  !$omp end parallel
  if (a/=20) print *,2
end do
if (a/=20) print *,3
end

subroutine sub9
integer a
a=10
!$omp parallel do reduction(max:a)
do i=1,1
  a=15
  !$omp parallel reduction(max:a)
  a=20
  !$omp end parallel
  if (a/=20) print *,2
end do
if (a/=20) print *,3
end
