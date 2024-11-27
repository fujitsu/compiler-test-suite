call sub1
call sub2
call sub3
call sub5
print *,'pass'
end

subroutine sub1
integer a
a=10
!$omp parallel 
if (a/=10) print *,11
!$omp barrier
a=20
!$omp parallel do simd lastprivate(a)
do i=1,1
  a=30
end do
!$omp end parallel do simd
if (a/=30) print *,21
!$omp end parallel
if (a/=30) print *,31
end

subroutine sub2
integer a
a=10
!$omp parallel shared(a)
if (a/=10) print *,12
!$omp barrier
a=20
!$omp parallel do simd lastprivate(a)
do i=1,1
  a=30
end do
!$omp end parallel do simd
if (a/=30) print *,22
!$omp end parallel
if (a/=30) print *,32
end

subroutine sub3
integer a
a=10
!$omp parallel default(shared)
if (a/=10) print *,13
!$omp barrier
a=20
!$omp parallel do simd lastprivate(a)
do i=1,1
  a=30
end do
!$omp end parallel do simd
if (a/=30) print *,23
!$omp end parallel
if (a/=30) print *,33
end

subroutine sub5
integer a
a=10
!$omp parallel default(firstprivate)
if (a/=10) print *,15
!$omp barrier
a=20
!$omp barrier
!$omp parallel do simd lastprivate(a)
do i=1,1
  a=30
end do
!$omp end parallel do simd
!$omp end parallel
if (a/=10) print *,35
end
