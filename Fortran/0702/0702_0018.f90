 call s1
 print *,'pass'
 end
 subroutine s1
implicit none

interface
 subroutine sum_pointer(n,m,array,sum)
   integer :: n,m, i,j
   real(kind=8), pointer :: array(:,:)
   real(kind=8)          :: sum
 end subroutine sum_pointer
 subroutine sum_array(n,m,array,sum)
   integer :: n,m, i,j
   real(kind=8) :: array(n,m), sum
 end subroutine sum_array
end interface

integer, parameter :: big     = 1000
integer, parameter :: small_c =  500
integer, parameter :: small_r = 1000
integer, parameter :: offset_r= 0
integer, parameter :: offset_c= big /4

real(kind=8), dimension(  big  ,    big), target    :: big_array
real(kind=8), dimension(small_r,small_c)            :: small_array
real(kind=8), dimension(      :,      :), pointer   :: array_section

real(kind=8) :: t0, t1, t2, t3, second, sum

integer :: i,j

array_section => big_array(offset_r+1:offset_r+small_r, &
                           offset_c+1:offset_c+small_c)

do i=1, big
   do j=1, big
      big_array(i,j) = i+j
   end do
end do

do i=1, small_r
   do j=1, small_c
      small_array(i,j) = array_section(i,j)
   end do
end do

t0 = second()

do i=1, 10
   call sum_array(small_r,small_c,small_array,sum)
end do

t1 = second()
write(1,'(a,f10.3,3x,f15.0)') &
     ' CPU time operating on the small array:      ', t1-t0, sum

do i=1, 10
   call sum_array(small_r,small_c,array_section,sum)
end do

t2 = second()
write(1,'(a,f10.3,3x,f15.0)') &
     ' CPU time operating on the array section (1):', t2-t1, sum

do i=1, 10
   call sum_pointer(small_r,small_c,array_section,sum)
end do

t3 = second()
write(1,'(a,f10.3,3x,f15.0)') &
     ' CPU time operating on the array section (2):', t3-t2, sum

end

subroutine sum_array(n,m,array,sum)
  integer :: n,m, i,j
  real(kind=8) :: array(n,m), sum

  sum= 0.0d0

  do i= 1,n
     do j=1,m
        sum = sum + array(i,j)
     end do
  end do

  return
end subroutine sum_array

subroutine sum_pointer(n,m,array,sum)
  integer :: n,m, i,j
  real(kind=8), pointer :: array(:,:)
  real(kind=8)          :: sum

  sum= 0.0d0

  do i= 1,n
     do j=1,m
        sum = sum + array(i,j)
     end do
  end do

  return
end subroutine sum_pointer

function second()
 real*8 second
 second =1.0
end
