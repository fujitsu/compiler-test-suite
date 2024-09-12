 program main
   integer prv
 
   prv=1 
   !$omp parallel shared(prv)
   !$omp task default(firstprivate)
   !$omp atomic
   prv = prv + 1
   !$omp endatomic
   !$omp end task
 if (prv.ne.1) print *,'err'
   !$omp end parallel
print *,'pass' 
 end program main
