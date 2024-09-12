         i1=1
j=1
i=1;i=i
!$omp atomic capture
         i=j
         j=i1
         !$omp end atomic
print *,'pass'
         end

