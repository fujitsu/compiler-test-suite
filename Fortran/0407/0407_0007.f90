 program main
   integer prv
 
   !$omp parallel private(prv)
   prv=1
   !$omp task
   !$omp atomic
   prv = prv + 1
   !$omp end task
   !$omp end parallel
print *,'pass' 
 end program main
