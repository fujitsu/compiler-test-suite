program main
  integer(4)  :: i
  integer(8)  :: n
  real(8)     :: in_data(100)
  n = 100
  do i = 1, n
     in_data = i
  end do
  call sub(n,in_data)
end program main

subroutine sub(n,in_data)
  implicit none
  integer(8),intent(in)  :: n
  real(8),intent(in)     :: in_data(n)
  integer(8)             :: i
  real(8)                :: a
  integer                :: b
  real(8)                :: c
  c     = 0.d0

  do i = 1, n
    a = in_data(i)
    if( a > 0.d0 ) then
      b = 1
    else
      b = 0
    end if
    c = b
  end do

  print *, c
end subroutine sub
