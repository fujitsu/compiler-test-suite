subroutine sub01()
  real,dimension(10,10) :: a
  integer :: i,j,k1,k2

!$omp parallel do collapse(3)
    do k1 = 1, 3
      do j = k1, 10
        do i = 1, 10
           a(i,j) = 0
        enddo
      enddo
    end do
!$omp end parallel do

    do k1 = 1, 3
!$omp parallel do collapse(2)
      do j = k1, 10
        do i = 1, 10
           a(i,j) = 0
        enddo
      enddo
!$omp end parallel do
    end do

    do k1 = 1, 3
      do j = k1, 10
!$omp parallel do collapse(1)
        do i = 1, 10
           a(i,j) = 0
        enddo
!$omp end parallel do
      enddo
    end do

end subroutine sub01

program main
  call sub01()
end program main

