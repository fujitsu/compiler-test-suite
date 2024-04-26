
                 implicit none
                 integer:: i1=1
                 real::a =0.0
                            !$omp parallel
                            !$omp task  default(none) shared(i1)
                            !$omp task  shared(a)
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
                            !$omp task
                            !$omp task 
                            do i1=1,5
                            a =real(1)
                            if(real(1)/=1.0) print *,'err'
                            if(a/=1.0) print *,'err'
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
                            !$omp end task
                            !$omp end task
                            !$omp end task
                            !$omp end parallel
                 print *,"pass"
                 end
