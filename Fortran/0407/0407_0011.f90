 program main
   integer prv
   iaa=1 
   prv=1 
   !$omp parallel shared(prv,iaa)
   !$omp task default(firstprivate)
   !$omp atomic
   prv = prv + 1
   !$omp end atomic
    iaa=iaa+100
   !$omp end task
 if (prv.ne.1) print *,'err'
 if (iaa.ne.1) print *,'err'
   !$omp end parallel
print *,'pass' 
 end program main
