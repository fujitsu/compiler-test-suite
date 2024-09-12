 program main
   integer prv
 
   prv=1 
   prv1=1 
   !$omp parallel shared(prv)
   !$omp task default(firstprivate)
   !$omp task default(firstprivate)
   prv1 = prv1 + 1
   !$omp atomic
   prv = prv + 1
   !$omp endatomic
   !$omp end task
   !$omp end task
   !$omp end parallel
   print *,'pass'
 
 end program main
