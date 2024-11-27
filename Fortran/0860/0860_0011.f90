                implicit none
                real::c=0
                            !$omp task  default(none)
                            !$omp critical
                              c=c+real(1) 
                            !$omp end critical
                            !$omp end task
       
                            !$omp task  default(none) shared(c)
                            !$omp critical
                              c=c+real(1) 
                            !$omp end critical
                            !$omp end task
                 print *, "pass"
                 end
