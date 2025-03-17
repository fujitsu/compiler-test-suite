


subroutine bar(a,val1,val2)
  real,dimension(10,10) :: a
  integer :: val1,val2
  a(val1,val2) = val1+val2
end subroutine bar


subroutine sub01(a)
  real,dimension(10,10) :: a
  real,dimension(3) :: jj,ii
  jj(1) = 1
  jj(2) = 10
  jj(3) = 1
  ii(1) = 1
  ii(2) = 10
  ii(3) = 1
!$omp parallel
!$omp do  collapse(2)
  do j = jj(1), jj(2),jj(3)
     do i = ii(1), ii(2),ii(3)
        call bar(a,i,j)
     enddo
  enddo
!$omp end do
!$omp end parallel
end subroutine sub01


program main
real,dimension(10,10) :: a
real :: ans
ans = 1100.0

 do j=1,10
    do i=1,10
       a(i,j) = 0
    end do
 end do

call sub01(a)

if(ans .eq. sum(a)) then
   print *,"OK"
else
   print *,"NG"
endif

end program main
