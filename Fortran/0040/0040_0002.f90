          implicit none
        integer::k
          !$omp task default(shared) shared(k)
          !$omp simd
        do k=1,1
          if(real(1)/=1.0) print *,'err'
        enddo
          !$omp end simd
          !$omp end task

          !$omp parallel default(shared) shared(k)
          !$omp simd
        do k=1,1
          if(real(1)/=1.0) print *,'err'
        enddo
          !$omp end simd
          !$omp end parallel

          print *,"pass"
        end program

