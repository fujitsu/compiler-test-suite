integer, parameter :: n = 10
integer i, j, x
x = 10
!$omp parallel do collapse(3) shared(x) private(i, j)
      do i = 1, n
        do j = 1, n
          do j1 = 1, 1
          end do
         end do
         write(6,*) (i,k=1,10)
      end do
!$omp end parallel do
      do j1 = 1, 1
        write(6,*) (i,k=1,10)
      end do
end
