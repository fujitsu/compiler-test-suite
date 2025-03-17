


!


subroutine work(a,idx1,idx2)
  real,dimension(2,3) :: a
  integer :: idx1,idx2
  a(idx1,idx2) = idx1+idx2

end subroutine work

program test
integer :: omp_get_thread_num
real,dimension(2,3) :: a

!$omp parallel num_threads(2)
!$omp do collapse(2) ordered schedule(static,3)
  do k = 1,3
     do j = 1,2
!$omp ordered
        print *, omp_get_thread_num(), k, j
!$omp end ordered
        call work(a,j,k)
     enddo
  enddo
!$omp end do
!$omp end parallel

print *,sum(a)

end program test
