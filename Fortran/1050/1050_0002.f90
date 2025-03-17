


subroutine bar(a,val1,val2)
  real,dimension(10,10) :: a
  integer :: val1,val2
  a(val1,val2) = val1+val2
end subroutine bar


subroutine sub01(a)
  real,dimension(10,10) :: a
!$omp do collapse(2)
  do j = 1, 10
     do i = 1, 10
        call bar(a,i,j)
     enddo
  enddo
!$omp end do
end subroutine sub01


program main
real,dimension(10,10) :: a

 do j=1,10
    do i=1,10
       a(i,j) = 0
    end do
 end do

call sub01(a)

print *,sum(a)

end program main
