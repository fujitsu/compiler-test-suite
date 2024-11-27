   !$omp task 
   !$omp task default(none)
   !$omp critical
   !$omp task 
   print *,i
   !$omp end task
   !$omp endcritical
   !$omp end task
   !$omp end task
   end
