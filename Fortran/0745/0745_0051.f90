program omp_implicit_test
 implicit none                                                                  
!$OMP CRITICAL (example)
!$OMP END CRITICAL (example)
print *,'pass'
end program 
