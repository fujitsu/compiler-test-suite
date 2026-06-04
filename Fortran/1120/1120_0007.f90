integer, parameter :: n = 10
integer i, j, x
x = 10
!$omp do collapse(1)
      do i = 1, n
         do j = 1, n
            x = x + 1
         end do
      end do
!$omp end do
if(x/=110) print *,'err'
print *,'pass'
end
