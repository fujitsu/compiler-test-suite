                implicit none
                real::c=0
                            !$omp task  default(none) shared(c)
                            !$omp atomic
                             c=c+real(1)
                            !$omp end atomic
                            !$omp end task
       
                            !$omp task  default(none) shared(c)
                            !$omp task
                             c=c+real(1)
                            !$omp end task
                            !$omp end task
                 if ( c /= 2.0 ) print *,"err"
                 print *, "pass"
                 end

