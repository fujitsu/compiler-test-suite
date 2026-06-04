  integer::j
  j=1
associate(p2=>j)
  !$omp task if(p2.eq.p2)
  !$omp end task
endassociate
print *,'pass'
end program
