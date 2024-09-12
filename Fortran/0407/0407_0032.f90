 program main
   integer prv
   namelist /na/ i,j,k
   namelist /naa/ i1,j2,k3
   data i,j,k /1,2,3/ 
   data i1,j2,k3 /11,12,13/ 
   prv=1 
   prv1=1 
   !$omp parallel shared(prv,i,j,k)
   !$omp task default(firstprivate)
   prv1 = prv1 + 1
i=100
   prv = prv + 1
   write(10,naa)
   !$omp end task
   write(16,na)
   !$omp end parallel
print *,'pass' 
 end program main
