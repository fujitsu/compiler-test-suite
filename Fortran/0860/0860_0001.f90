         integer::a=1, b=2
                    !$omp task  default(none)
                    !$omp task
                    !$omp task
                    !$omp task
                    !$omp task
                    !$omp task
                    !$omp task
                    !$omp task
                    !$omp task
                    !$omp task
                    !$omp task
                            do i1=1,5
                             b =real(1)
                             do i2=1,5
                              a =real(1)
                              if(real(1)/=1.0) print *,'err'
                              if(a/=1.0) print *,'err'
                              if(b/=2.0) print *,'err'
                             end do
                            end do
                    !$omp end task
                    !$omp end task
                    !$omp end task
                    !$omp end task
                    !$omp end task
                    !$omp end task
                    !$omp end task
                    !$omp end task
                    !$omp end task
                    !$omp end task
                    !$omp end task
         
                    !$omp task  default(none)
                    !$omp parallel
                            do i1=1,5
                            a =real(1)
                            if(real(1)/=1.0) print *,'err'
                            if(a/=1.0) print *,'err'
                            end do
                    !$omp end parallel
                    !$omp end task
         
         end
