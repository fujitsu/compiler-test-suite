        implicit none
                integer:: i1=0, i2=0, i3=0
                    !$omp task  default(none)
                    !$omp parallel do ordered
                       do i1=1,10
                        do i2=1,10
                         do i3=1,10
                           if(real(1)/=1.0) print *,'err'
                         end do
                        end do
                       end do
                    !$omp end parallel do
                    !$omp end task

         print *,'pass'
         end
