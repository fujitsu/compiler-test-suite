integer :: i(1,1)
!$omp parallel private(i &
!$omp& )
!$omp task default(firstprivate)
i  = 100
if(sum(i)/=100) print *,'err'
!$omp end task
!$omp end parallel
print *,'pass'
end
