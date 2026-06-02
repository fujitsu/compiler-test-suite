                integer::c=0
                    !$omp task  default(none) firstprivate(c)
                    !$omp parallel firstprivate(c)
                      c=c+1
                    if(real(1)/=1.0) print *,'err'
                    !$omp end parallel
                    !$omp end task

         print *,"pass"
         end
