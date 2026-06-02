integer::j
j=2
associate(p2=>j)
  !$omp parallel if(p2.eq.p2)
  !$omp end parallel
endassociate
print *,'pass'
end program
