integer(2), allocatable, dimension (:) :: a
!$omp parallel private (a)
allocate (a(2))
a(1) = 1_2
a(2) = 2_2
if(any(a/=(/1_2,2_2/))) write(6,*) "NG"
!$omp end parallel
print *,'pass'
end
