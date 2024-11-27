integer(4), allocatable, dimension (:) :: a
!$omp parallel private (a)
allocate (a(2))
a(1) = 1_4
a(2) = 2_4
if(any(a/=(/1_4,2_4/))) write(6,*) "NG"
!$omp end parallel
print *,'pass'
end
