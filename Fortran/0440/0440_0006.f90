integer a
a=10
!$omp parallel do simd firstprivate(a) lastprivate(a)
do i=1,1
  if(a/=10) print *,11
  a=20
end do
if (a/=20) print *,21
call sub
print *,'pass'
end

subroutine sub
integer a
a=10
!$omp parallel do simd firstprivate(a) lastprivate(a)
do i=1,1
  if(a/=10) print *,11
end do
end
