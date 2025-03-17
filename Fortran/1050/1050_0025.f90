
!


subroutine work(a,idx1,idx2,idx3)
  real,dimension(4,2,3) :: a
  integer :: idx1,idx2,idx3
  a(idx1,idx2,idx3) = idx1+idx2+idx3

end subroutine work

program test
integer :: omp_get_thread_num
real,dimension(10,10,10) :: a

a=0_8

!$omp parallel num_threads(2)
!$omp do collapse(3) ordered schedule(static,3)
  do k = 1,3
     do j = 1,2
        do i = 1,4
!$omp ordered
           print *, omp_get_thread_num(), k, j, i
!$omp end ordered
           call work(a,i,j,k)
        end do
     enddo
  enddo
!$omp end do
!$omp end parallel

print *,sum(a)

end program test
