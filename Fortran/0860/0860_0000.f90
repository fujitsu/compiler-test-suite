         integer::a=1
                    !$omp task  default(none)
                    !$omp task
                            do i1=1,5
                            a =real(1)
                            if(real(1)/=1.0) print *,'err'
                            if(a/=1.0) print *,'err'
                            end do
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
