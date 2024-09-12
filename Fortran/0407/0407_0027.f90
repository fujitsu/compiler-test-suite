program main
   integer prv
   prv=1
   !$omp parallel shared(prv)
   !$omp task
   !$omp atomic
   prv = prv + 1
   !$omp endatomic
   !$omp end task
   !$omp end parallel
   print *,'pass'
 end program main

