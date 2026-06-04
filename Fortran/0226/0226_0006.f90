
         implicit none 
         real:: a=0.0
         integer:: i1=1, iX=0
                  !$omp task  default(none)
                  !$omp parallel do private(iX)
                  do iX=1,5
                    !$omp simd private(i1,a)
                    do i1=1,5
                    a =real(1)
                    if(real(1)/=1.0) print *,'err'
                    if(a/=1.0) print *,'err'
                    end do
                    !$omp end simd
                  end do
                  !$omp end parallel do
                  !$omp end task


          print *,"pass"
          end
