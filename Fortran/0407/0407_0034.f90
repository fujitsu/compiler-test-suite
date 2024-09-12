 program main
   integer prv
   if(i)=ifun(i) 
   prv=1 
   iaa=1
   !$omp parallel shared(prv)
   !$omp task default(firstprivate)
   !$omp atomic
   prv = prv + if(iaa)
   !$omp endatomic
   !$omp end task
   !$omp end parallel
 
print *,'pass' 
 end program main
function ifun(j)
j=100
ifun=1
end
