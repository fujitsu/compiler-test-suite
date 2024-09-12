subroutine sub
integer :: a=100
!$omp workshare
  a=200
  !$omp parallel default(firstprivate)
    if (a/=200) print *,1
    a = 300
  !$omp end parallel
!$omp end workshare
if (a/=200) print *,2
end

integer :: a=100
!$omp workshare
  a=200
  !$omp parallel default(firstprivate)
    if (a/=200) print *,1
    a = 300
  !$omp end parallel
!$omp end workshare
if (a/=200) print *,2
call sub
print *,'pass'
end
