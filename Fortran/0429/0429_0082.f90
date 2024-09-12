subroutine sub
integer :: a
a=100
!$omp workshare
  a=200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
!$omp end workshare
if (a/=200) print *,2
end

integer :: a
a=100
!$omp workshare
  a=200
  !$omp parallel private(a)
    a = 300
  !$omp end parallel
!$omp end workshare
if (a/=200) print *,2
call sub
print *,'pass'
end
