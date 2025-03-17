


subroutine bar(a,val1,val2,val3,val4,val5)
  real,dimension(10,10,10,11,8) :: a
  integer :: val1,val2,val3,val4,val5
  a(val1,val2,val3,val4,val5) = val1+val2+val3+val4+val5
end subroutine bar

subroutine sub01(a)
  real,dimension(10,10,10,11,8) :: a
  integer :: i,j,k,ll,m
!$omp parallel
!$omp do collapse(4)
  do i = 1, 10
     do j = 1, 10
        do k =1, 10
           do ll=1,11
              do m=1,8              
                 call bar(a,i,j,k,ll,m)
              end do
           end do
        enddo
     end do
  enddo
!$omp end do
!$omp end parallel
end subroutine sub01


program main
real,dimension(10,10,10,11,8) :: a

a=0_8

call sub01(a)

print *,sum(a)

end program main
