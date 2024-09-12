integer a
a=10
!$omp parallel do simd lastprivate(a) firstprivate(a)
do i=1,1
  if (a/=10) print *,11
  a = 20
end do
!$omp end parallel do simd
if (a/=20) print *,21
call sub
print *,'pass'
end

subroutine sub
integer a
a=10
!$omp parallel do simd lastprivate(a) firstprivate(a)
do i=1,1
  if (a/=10) print *,11
  a = 20
end do
!$omp end parallel do simd
if (a/=20) print *,21
end
