integer(4), allocatable, dimension (:) :: a
!$omp parallel private (a)
!$omp task firstprivate (a)
allocate (a(2))
a(1) = 1_4
a(2) = 2_4
if(any(a/=(/1_4,2_4/))) print *,"fail"
!$omp end task
!$omp end parallel
print *,'pass'
end
