integer::i=1
!$omp task default(none) 
!$omp critical
!$omp task 
   print *,i
!$omp end task
!$omp endcritical
!$omp end task
end
