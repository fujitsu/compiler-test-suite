!$omp critical (block_touched_critical)
!$omp end critical (block_touched_critical)

!$omp critical 
!$omp end critical

print *,'pass'
 end
