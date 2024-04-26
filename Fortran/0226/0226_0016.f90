        integer::c=0, a=0
                    !$omp task  default(none)
                    !$omp parallel
                    !$omp task
                     a=a+real(1)
                    !$omp task
                     do i=1,10
                     c=c+real(1)
                     end do
                    !$omp end task
                    !$omp end task
                    !$omp end parallel
                    !$omp end task
         print *,"pass"
         end
