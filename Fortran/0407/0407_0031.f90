 program main
   integer prv
 
   prv=1 
   !$omp parallel shared(prv)
   !$omp task default(firstprivate)
   !$omp critical
   prv = prv + 1
   !$omp endcritical
   !$omp end task
   !$omp end parallel
   print *,'pass'
 
 end program main
