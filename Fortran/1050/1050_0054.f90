
!


subroutine work(a,idx1,idx2,idx3,idx4)
  real,dimension(4,2,3,0:5) :: a
  integer :: idx1,idx2,idx3,idx4
  a(idx1,idx2,idx3,idx4) = idx1+idx2+idx3+idx4

end subroutine work

program test
  integer :: omp_get_thread_num
  real,dimension(10,10,10,0:10) :: a

  a = 0_8

!$omp parallel num_threads(2)
!$omp do collapse(4) ordered schedule(static,3)
  do l = 0,5
     do k = 1,3
        do j = 1,2
           do i = 1,4
!$omp ordered
              print *, omp_get_thread_num(),l, k, j, i
!$omp end ordered
              call work(a,i,j,k,l)
           end do
        enddo
     enddo
  end do
!$omp end do
!$omp end parallel

print *,sum(a)

end program test
