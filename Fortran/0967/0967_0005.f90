subroutine sub01()
  real,dimension(10,10) :: a
  integer :: i,j,k1,k2,k3

  do k2 = 1, 2
    do j1 = 1, 10
           a(1,j1) = 0
    enddo
    do j2 = 1, 10
           a(1,j2) = 0
    enddo
!$omp parallel 
!$omp do collapse(2)
    do k1 = k2, 3
      do j = 1, 10
           a(1,j) = 0
      enddo
      do j1 = 1, 10
           a(1,j1) = 0
      enddo
    end do
!$omp end do
!$omp end parallel
  end do
end subroutine sub01

program main
  call sub01()
end program main

