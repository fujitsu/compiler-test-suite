        integer::c=0
                    !$omp task  default(none)
                    !$omp simd
                     do i=1,10
                     c=c+real(1)
                     end do
                    !$omp end simd
                    !$omp end task

                    !$omp task  default(none) shared(c)
                    !$omp simd
                     do i=1,10
                     c=c+real(1)
                     end do
                    !$omp end simd
                    !$omp end task
         end
