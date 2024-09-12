subroutine sub01(a)
  real,dimension(10,10,10) :: a
!$omp do collapse(2)
  do k = 1, 10
     do j = 1, 10
        do i = 1, 10
           a(i,j,k) = 0
        end do
        do i = 1, 10
           a(i,j,k) = 1
        end do
     enddo
  enddo
!$omp end do
end subroutine sub01

program main
real,dimension(10,10,10) :: a
call sub01(a)
write(1,*)sum(a)
print *,'pass'
end program main
