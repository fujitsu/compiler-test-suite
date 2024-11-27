integer(1), allocatable, dimension (:) :: a
!$omp parallel private (a)
allocate (a(2))
a(1) = 1_1
a(2) = 2_1
if(any(a/=(/1_1,2_1/))) write(6,*) "NG"
!$omp end parallel
print *,'pass'
end
