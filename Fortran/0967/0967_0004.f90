subroutine sub01()
  real,dimension(10,10) :: a,b
  integer :: i,j,k1,k2,k3

!$omp parallel
!$omp do collapse(2)
  do k2 = 1, 2
    do k1 = k2, 3
      do j = 1, 10
        do i = 1, 10
           a(i,j) = 0
        enddo
      enddo
    end do
  end do
!$omp end parallel
end subroutine sub01

program main
  call sub01()
end program main

