!$omp critical (aaa)
  i=1
  i=i
!$omp end critical (aaa)
!
print *,'pass'
end
