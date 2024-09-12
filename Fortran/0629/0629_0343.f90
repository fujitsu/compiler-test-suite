      integer(4), parameter :: n = 500
      real(8), dimension(n,n) :: a,b,c
!$omp parallel
!$omp workshare
      a(:,:)=1.0d0
      b(:,:)=1.0d0
      c=matmul(a,b)
!$omp end workshare
!$omp end parallel
      write(*,*) c(1,1)
      end
