

subroutine bar(a,val1,val2,val3,val4)
  real,dimension(10,10,10,10) :: a
  integer :: val1,val2,val3,val4

  a(val1,val2,val3,val4) = val1+val2+val3+val4

end subroutine bar


subroutine sub01(a)
  real,dimension(10,10,10,10) :: a
!$omp parallel
!$omp do collapse(4)
  do l = 1, 10
     do k = 1, 10
        do j = 1, 10
           do i = 1, 10
              call bar(a,i,j,k,l)
           end do
        end do
     enddo
  enddo
!$omp end do
!$omp end parallel
end subroutine sub01


program main
  real,dimension(10,10,10,10) :: a
  a=0_8

  call sub01(a)
  
  print *,sum(a)

end program main
