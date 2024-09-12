 program main
   integer prv
   if(i)=ifun(iaa) 
   if2(i)=ifun(iaa2) 
   prv=1 
   iaa=1
   iaa2=1
ii=1
ii2=1
   !$omp parallel shared(prv)
   !$omp task default(firstprivate)
   !$omp critical
   prv = prv + 1
   ii=if(ii)
   !$omp endcritical
   !$omp critical
   prv = prv + 1
   ii2=if2(ii2)
   !$omp endcritical
   !$omp end task
   if (iaa.ne.1) print *,'err'
   if (iaa2.ne.1) print *,'err'
   !$omp end parallel
print *,'pass' 
 end program main
function ifun(j)
j=100
ifun=1
end
