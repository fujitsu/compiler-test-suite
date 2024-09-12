 program main
   integer prv
 
   prv=1 
   !$omp parallel shared(prv)
   !$omp task default(firstprivate)
   !$omp critical
   prv = prv + 1
   !$omp endcritical
   !$omp end task
 if (prv.ne.1) print *,'err'
   !$omp end parallel
print *,'pass' 
 end program main
