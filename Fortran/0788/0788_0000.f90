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
!$omp parallel
if (a/=10) print *,11
!$omp barrier
a=20
!$omp parallel do simd firstprivate(a)
do i=1,1
  if (a/=20) print *,21
  a=30
end do
!$omp end parallel do simd
if (a/=20) print *,31
!$omp end parallel
if (a/=20) print *,41
end

subroutine sub2
integer a
a=10
!$omp parallel shared(a)
if (a/=10) print *,12
!$omp barrier
a=20
!$omp parallel do simd firstprivate(a)
do i=1,1
  if (a/=20) print *,22
  a=30
end do
!$omp end parallel do simd
if (a/=20) print *,32
!$omp end parallel
if (a/=20) print *,42
end

subroutine sub3
integer a
a=10
!$omp parallel default(shared)
if (a/=10) print *,13
!$omp barrier
a=20
!$omp parallel do simd firstprivate(a)
do i=1,1
  if (a/=20) print *,23
  a=30
end do
!$omp end parallel do simd
if (a/=20) print *,33
!$omp end parallel
if (a/=20) print *,43
end

subroutine sub4
integer a
a=10
!$omp parallel firstprivate(a)
if (a/=10) print *,14
!$omp barrier
a=20
!$omp parallel do simd firstprivate(a)
do i=1,1
  if (a/=20) print *,24
  a=30
end do
!$omp end parallel do simd
if (a/=20) print *,34
!$omp end parallel
if (a/=10) print *,44
end

subroutine sub5
integer a
a=10
!$omp parallel default(firstprivate)
if (a/=10) print *,15
!$omp barrier
a=20
!$omp parallel do simd firstprivate(a)
do i=1,1
  if (a/=20) print *,25
  a=30
end do
!$omp end parallel do simd
if (a/=20) print *,35
!$omp end parallel
if (a/=10) print *,45
end

subroutine sub6
integer a
a=10
!$omp parallel private(a)
a=20
!$omp parallel do simd firstprivate(a)
do i=1,1
  if (a/=20) print *,26
  a=30
end do
!$omp end parallel do simd
if (a/=20) print *,36
!$omp end parallel
if (a/=10) print *,46
end

subroutine sub7
integer a
a=10
!$omp parallel default(private)
a=20
!$omp parallel do simd firstprivate(a)
do i=1,1
  if (a/=20) print *,27
  a=30
end do
!$omp end parallel do simd
if (a/=20) print *,37
!$omp end parallel
if (a/=10) print *,47
end

