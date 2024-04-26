!$omp critical
  i=1
  i=i
!$omp end critical
!
print *,'pass'
end
