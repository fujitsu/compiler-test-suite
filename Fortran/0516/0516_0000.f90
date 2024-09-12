        implicit none
                    !$omp task default(none)
                    !$omp taskgroup
                             if(real(1)/=1.0) print *,'err'
                    !$omp end taskgroup
                    !$omp end task
         print *,"pass"
         end
