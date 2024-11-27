        integer::c=0, a=0
                    !$omp task  default(none)
                    !$omp task
                     a=a+real(1)
                    !$omp task
                     do i=1,10
                     c=c+real(1)
                     end do
                    !$omp end task
                    !$omp end task
                    !$omp end task

                    !$omp task  default(none)
                    !$omp task
                     a=a+real(1)
                    !$omp task
                    !$omp end task
                    !$omp end task
                    !$omp end task

                    !$omp task  default(none)
                    !$omp task
                    !$omp task
                     a=a+real(1)
                    !$omp end task
                    !$omp task
                     a=a+real(1)
                    !$omp end task
                    !$omp end task
                    !$omp end task

                    !$omp task  default(none)
                    !$omp task
                    !$omp task
                     a=a+real(1)
                    !$omp end task
                    !$omp task
                     a=a+real(1)
                     c=c+real(1)
                    !$omp end task
                    !$omp end task
                    !$omp end task
         end
