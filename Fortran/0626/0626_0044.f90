subroutine sub01()
  real,dimension(10,10) :: a
  integer :: i,j,k1,k2

  do k2 = 1, 2
!$omp parallel do collapse(3)
    do k1 = k2, 3 
      do j = 1, 10
        do i = 1, 10
           a(i,j) = 0
        enddo
      enddo
    end do
!$omp end parallel do
  end do
end subroutine sub01

program main
  call sub01()
  print *,'pass'
end program main
