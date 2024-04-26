        implicit none
        integer:: i1=0
                    !$omp task default(none)
                    !$omp parallel do simd
                        do i1=1,5
                           if(real(1)/=1.0) print *,'err'
                        end do
                    !$omp end parallel do simd
                    !$omp end task
         print *,"pass"
         end
