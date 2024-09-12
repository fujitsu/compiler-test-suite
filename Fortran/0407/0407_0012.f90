 program main
   integer prv
 
   prv=1 
   p=100
   !$omp parallel shared(prv,p)
   !$omp task default(firstprivate)
   !$omp atomic read
   prv =  p
   !$omp endatomic
   !$omp end task
 if (prv.ne.1) print *,'err'
   !$omp end parallel
print *,'pass' 
 end program main
