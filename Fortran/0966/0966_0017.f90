integer i, j, x
!$omp task default(none)
!$omp parallel 
v=1
!$omp end parallel
!$omp task
if(x/=110) print *,'err'
!$omp end task
!$omp end task

end

