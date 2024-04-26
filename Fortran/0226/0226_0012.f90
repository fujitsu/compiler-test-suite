
                 implicit none
                 integer:: i1=1
                 real::a =0.0
                            !$omp task  default(none) shared(a,i1)
                            !$omp parallel
                            !$omp task  shared(a)
                            do i1=1,5
                            a =real(1)
                            if(real(1)/=1.0) print *,'err'
                            if(a/=1.0) print *,'err'
                            end do
                            !$omp end task
                            !$omp end parallel
                            !$omp end task
                 print *,"pass"
                 end
