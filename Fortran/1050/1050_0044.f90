

subroutine bar(a,val1,val2,val3)
  real,dimension(10,10,10) :: a
  integer :: val1,val2,val3
  a(val1,val2,val3) = val1+val2+val3
end subroutine bar


subroutine sub01(a)
  real,dimension(10,10,10) :: a
!$omp parallel
!$omp do collapse(3)
  do k = 1, 10
     do j = 1, 10
        do i = 1, 10
           call bar(a,i,j,k)
        end do
     enddo
  enddo
!$omp end do
!$omp end parallel
end subroutine sub01


program main
real,dimension(10,10,10) :: a

call sub01(a)

print *,sum(a)

end program main
