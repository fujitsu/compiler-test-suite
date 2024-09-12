 program main
   integer prv
   if(i)=ifun(iaa) 
   prv=1 
   iaa=1
ii=1
   !$omp parallel 
   !$omp parallel do shared(prv)
do i=1,1
   !$omp task default(firstprivate)
   prv = prv + 1
   ii=if(ii)
   !$omp end task
enddo
   !$omp end parallel do
   !$omp end parallel 
print *,'pass'
 
 end program main
function ifun(j)
j=100
ifun=1
end
