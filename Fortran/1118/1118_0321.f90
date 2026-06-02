integer(1), allocatable, dimension (:) :: a
!$omp task
!$omp task
!$omp parallel private (a)
!$omp task firstprivate(a)
allocate (a(2))
a(1) = 1_1
a(2) = 2_1
if(any(a/=(/1_1,2_1/))) print *,'err'
!$omp end task
!$omp end parallel
!$omp end task
!$omp end task
print *,'pass'
end
