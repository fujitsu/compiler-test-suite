implicit none

real(kind=8), dimension(1000,500)            :: small_array
common /ccc/small_array

real(kind=8) :: sum

integer :: i,j,k

do i=1, 1000
   do j=1, 500
      small_array(i,j) = i+j + small_array(5,5)
   end do
end do

do k=1, 10
  call sum_array(1000,500,small_array,sum)
end do
print *,'ok'
contains

subroutine sum_array(n,m,array,sum)
  integer :: n,m, i,j
  real(kind=8) :: array(n,500), sum

  sum= 0.0d0

  do i= 1,1000
     do j=1,500
        array(i,j) =  1
     end do
  end do

  return
end subroutine sum_array
end