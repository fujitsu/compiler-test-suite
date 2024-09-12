 program main
   integer prv
   ifa(i)=ifun(iaa) 
   if(i)=ifa(i)
   prv=1 
   iaa=1
ii=1
   !$omp parallel shared(prv)
   !$omp task default(firstprivate)
   !$omp critical
   prv = prv + 1
   ii=if(ii)
   !$omp endcritical
   !$omp end task
   if (iaa.ne.1) print *,'err'
   !$omp end parallel
print *,'pass' 
 end program main
function ifun(j)
j=100
ifun=1
end
