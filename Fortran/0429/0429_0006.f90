integer a
a=10
!$omp parallel do lastprivate(a) firstprivate(a)
do i=1,1
  if (a/=10) print *,11
  a=20
end do
!$omp end parallel do
if (a/=20) print *,12
call sub
print *,'pass'
end

subroutine sub
integer a
a=10
!$omp parallel do lastprivate(a) firstprivate(a)
do i=1,1
  if (a/=10) print *,11
  a=20
end do
!$omp end parallel do
if (a/=20) print *,12
end
