subroutine sub01(a)
  real,dimension(10,10,10,10) :: a
  do k = 1, 10
     do j = 1, 10
!$omp parallel do collapse(2)
        do i = 1, 10
           do l = j, i
              a(l,i,j,k) = 1
           end do
        end do
     enddo
  enddo
end subroutine sub01

program main
real,dimension(10,10,10,10) :: a
call sub01(a)
print *,'pass'
end program main

