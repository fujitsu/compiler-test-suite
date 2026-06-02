integer(8), allocatable, dimension (:) :: a
!$omp parallel private (a)
allocate (a(2))
a(1) = 1_8
a(2) = 2_8
if(any(a/=(/1_8,2_8/))) print *,"fail"
!$omp end parallel
print *,'pass'
end
