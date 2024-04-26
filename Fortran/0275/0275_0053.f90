 integer :: a, i, arr(2)
 a = 1
 i= 6
 associate(x => a,y=>i,z=>a)
 !$omp parallel private(a)
 a = 2
 i=  8
 if(x .ne. 1)print*,"101"
 if(y .ne. 8)print*,"102"
 if(z .ne. 1)print*,"103"
 !$omp parallel 
 !$omp sections firstprivate(i)  
  a = 2
  i= 7
  if(x .ne. 1)print*,"104" 
  if(y .ne. 8)print*,"105" 
  if(z .ne. 1)print*,"106" 
 !$omp end sections
 !$omp end parallel
 !$omp end parallel
 end associate
end

