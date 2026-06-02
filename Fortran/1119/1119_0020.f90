integer::j
j=2
associate(p2=>j)
  !$omp parallel num_threads(p2)
  !$omp end parallel
endassociate
print *,'pass'
end program
