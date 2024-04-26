
        implicit none 
                    !$omp task  default(none)
                    !$omp task
                    !$omp task
                    !$omp parallel
                    if(real(1)/=1.0) print *,'err'
                    !$omp end parallel
                    !$omp end task
                    !$omp end task
                    !$omp end task

                    !$omp task  default(none)
                    !$omp critical
                    !$omp task
                    if(real(1)/=1.0) print *,'err'
                    !$omp end task
                    !$omp end critical
                    !$omp end task

                    !$omp task  default(none)
                    !$omp critical
                    !$omp task
                    !$omp task
                    if(real(1)/=1.0) print *,'err'
                    !$omp end task
                    !$omp end task
                    !$omp end critical
                    !$omp end task
         print *,"pass"
         end
