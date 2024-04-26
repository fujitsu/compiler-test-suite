        implicit none

                    !$omp task default(none) 
                    !$omp taskwait
                           if(real(1)/=1.0) print *,'err'
                    !$omp end task
         print *,"pass"
         end
