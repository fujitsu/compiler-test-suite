 program main
   integer prv
 
   prv=1 
   p=100
   !$omp parallel shared(prv,p)
   !$omp task default(firstprivate)
   !$omp atomic capture
   prv =  prv + 1
   p   =  prv
   !$omp endatomic
   !$omp end task
 if (prv.ne.1) print *,'err'
 if (p.ne.100) print *,'err2'
   !$omp end parallel
print *,'pass' 
 end program main
