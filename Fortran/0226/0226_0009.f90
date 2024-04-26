
                    !$omp task  default(none)
                    !$omp task
                    !$omp task
                    !$omp parallel
                    if(real(1)/=1.0) print *,'err'
                    !$omp end parallel
                    !$omp end task
                    !$omp end task
                    !$omp end task

         print *,"pass"
         end
